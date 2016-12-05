-- Verwendete Packages
with Globals;
with Pictures.TiffPictures;
with Ada.Strings.Unbounded;
with Ada.Unchecked_Deallocation;

-- Package für EXIFParser
package body EXIFParsers is

   -- Konstruktor
   function create(binary: String; tiff_parent: access Pictures.TiffPictures.TiffPicture) return access EXIFParser is
      parser: access EXIFParser := new EXIFParser;
   begin
      -- Dateigröße überprüfen
      if (binary'Length mod Globals.exif.directory_length) = 0 then
         parser.all.exif := new String'(binary);
         parser.all.parent := tiff_parent;
         return parser;
      end if;

      -- Falsches Datenformat
      raise Pictures.Illegal_Format with "EXIF data has illegal format!";
   end create;

   -- Destruktor
   procedure destroy(This: access EXIFParser) is
      type type_access is access all EXIFParser;
      procedure Free is new Ada.Unchecked_Deallocation(EXIFParser, type_access);
      type String_Access is access all String;
      procedure Free_String is new Ada.Unchecked_Deallocation(String, String_Access);
      obj: type_access := type_access(This);
      str: String_Access := String_Access(This.all.exif);
   begin
      -- externe Variablen nicht löschen
      -- interne Variablen löschen
      if This.all.exif /= null then
         Free_String(str);
      end if;
      Free(obj);
   end;

   -- Universal-Getter
   function getTagBinary(This: access EXIFParser; tag: Integer; buffer: out Ada.Strings.Unbounded.Unbounded_String; typ: out Integer) return Integer is
      I: Integer := 0; -- Start am ersten Directory
      length: Integer;
      ptr: Integer;
   begin
      -- EXIF SubIFD durchsuchen
      while I < This.all.exif'Length loop
         -- gesuchter Tag gefunden
         if This.all.parent.createInt(This.all.exif(This.all.exif'First+I+0), This.all.exif(This.all.exif'First+I+1)) = tag then
            -- Metainformationen sammeln
            typ := This.all.parent.createInt(This.all.exif(This.all.exif'First+I+2), This.all.exif(This.all.exif'First+I+3));
            length := This.all.parent.createInt(This.all.exif(This.all.exif'First+I+4), This.all.exif(This.all.exif'First+I+5), This.all.exif(This.all.exif'First+I+6), This.all.exif(This.all.exif'First+I+7));

            -- Daten nach Typ binär auslesen
            case typ is
               when 1 | 6 => -- byte
                  if length <= 4 then
                     buffer := Ada.Strings.Unbounded.To_Unbounded_String(This.all.exif(This.all.exif'First+I+8..This.all.exif'First+I+7+length));
                  else
                     ptr := This.all.parent.createInt(This.all.exif(This.all.exif'First+I+8), This.all.exif(This.all.exif'First+I+9), This.all.exif(This.all.exif'First+I+10), This.all.exif(This.all.exif'First+I+11)) + 1; -- 0-Index wäre schöner...
                     buffer := Ada.Strings.Unbounded.To_Unbounded_String(This.all.parent.readBinary(ptr, ptr + length*1 - 1));
                  end if;
               when 3 | 8 => -- short
                  if length <= 2 then
                     buffer := Ada.Strings.Unbounded.To_Unbounded_String(This.all.exif(This.all.exif'First+I+8..This.all.exif'First+I+7+2*length));
                  else
                     ptr := This.all.parent.createInt(This.all.exif(This.all.exif'First+I+8), This.all.exif(This.all.exif'First+I+9), This.all.exif(This.all.exif'First+I+10), This.all.exif(This.all.exif'First+I+11)) + 1; -- 0-Index wäre schöner...
                     buffer := Ada.Strings.Unbounded.To_Unbounded_String(This.all.parent.readBinary(ptr, ptr + length*2 - 1));
                  end if;
               when 4 => -- long
                  if length <= 1 then
                     buffer := Ada.Strings.Unbounded.To_Unbounded_String(This.all.exif(This.all.exif'First+I+8..This.all.exif'First+I+7+4*length));
                  else
                     ptr := This.all.parent.createInt(This.all.exif(This.all.exif'First+I+8), This.all.exif(This.all.exif'First+I+9), This.all.exif(This.all.exif'First+I+10), This.all.exif(This.all.exif'First+I+11)) + 1; -- 0-Index wäre schöner...
                     buffer := Ada.Strings.Unbounded.To_Unbounded_String(This.all.parent.readBinary(ptr, ptr + length*4 - 1));
                  end if;
               when 5 | 10=> --  rational
                  ptr := This.all.parent.createInt(This.all.exif(This.all.exif'First+I+8), This.all.exif(This.all.exif'First+I+9), This.all.exif(This.all.exif'First+I+10), This.all.exif(This.all.exif'First+I+11)) + 1; -- 0-Index wäre schöner...
                  buffer := Ada.Strings.Unbounded.To_Unbounded_String(This.all.parent.readBinary(ptr, ptr + length*8 - 1));
               when 2 => -- String
                  ptr := This.all.parent.createInt(This.all.exif(This.all.exif'First+I+8), This.all.exif(This.all.exif'First+I+9), This.all.exif(This.all.exif'First+I+10), This.all.exif(This.all.exif'First+I+11)) + 1; -- 0-Index wäre schöner...
                  buffer := Ada.Strings.Unbounded.To_Unbounded_String(This.all.parent.readBinary(ptr, ptr + length - 1));
               when 11 => -- float
                  raise TagNotFound with "Tag-type not implemented!";
               when 12 => -- double
                  raise TagNotFound with "Tag-type not implemented!";
               when others => -- Fehler
                  raise TagNotFound with "Tag-type invalid!";
            end case;

            -- Blocklänge zurückgeben
            return length;
         end if;

         -- Nächstes Directory
         I := I + Globals.exif.directory_length;
      end loop;

      -- Nichts gefunden
      raise TagNotFound with "Tag not present!";
   end getTagBinary;


   -- Getterfunktionen
   function getISOSpeedRatings(This: access EXIFParser) return Integer is
      str: Ada.Strings.Unbounded.Unbounded_String;
      length: Integer;
      typ: Integer;
   begin
      -- Daten auslesen
      length := This.getTagBinary(Globals.exif.ISOSpeedRatings, str, typ);

      -- Überprüfung
      if length /= Globals.exif.ISOSpeedRatings_Length or typ /= Globals.exif.ISOSpeedRatings_Type then
         raise TagNotFound with "ISOSpeedRatings error!";
      else
         declare
            value: String := Ada.Strings.Unbounded.To_String(str);
         begin
            return This.all.parent.createInt(value(value'First+0), value(value'First+1));
         end;
      end if;
   end getISOSpeedRatings;
   function getDateTimeOriginal(This: access EXIFParser) return String is
      str: Ada.Strings.Unbounded.Unbounded_String;
      length: Integer;
      typ: Integer;
   begin
      -- Daten auslesen
      length := This.getTagBinary(Globals.exif.DateTimeOriginal, str, typ);

      -- Überprüfung
      if length /= Globals.exif.DateTimeOriginal_Length or typ /= Globals.exif.DateTimeOriginal_Type then
         raise TagNotFound with "DateTimeOriginal error!";
      else
         return Ada.Strings.Unbounded.To_String(str);
      end if;
   end getDateTimeOriginal;
   function getShutterSpeedValue(This: access EXIFParser) return Float is
      str: Ada.Strings.Unbounded.Unbounded_String;
      length: Integer;
      typ: Integer;
   begin
      -- Daten auslesen
      length := This.getTagBinary(Globals.exif.ShutterSpeedValue, str, typ);

      -- Überprüfung
      if length /= Globals.exif.ShutterSpeedValue_Length or typ /= Globals.exif.ShutterSpeedValue_Type then
         raise TagNotFound with "ShutterSpeedValue error!";
      else
         declare
            value: String := Ada.Strings.Unbounded.To_String(str);
            num: Integer;
         begin
            num := This.all.parent.createInt(value(value'First+0), value(value'First+1), value(value'First+2), value(value'First+3));
            if num < 0 then
               num := num - 1; -- EXIF Eigenheit, negative Zahlen im 1-er Komplement nicht 2-er Komplement
            end if;
            return Float(num) / Float(This.all.parent.createInt(value(value'First+4), value(value'First+5), value(value'First+6), value(value'First+7)));
         end;
      end if;
   end getShutterSpeedValue;
   function getApertureValue(This: access EXIFParser) return Float is
      str: Ada.Strings.Unbounded.Unbounded_String;
      length: Integer;
      typ: Integer;
   begin
      -- Daten auslesen
      length := This.getTagBinary(Globals.exif.ApertureValue, str, typ);

      -- Überprüfung
      if length /= Globals.exif.ApertureValue_Length or typ /= Globals.exif.ApertureValue_Type then
         raise TagNotFound with "ApertureValue error!";
      else
         declare
            value: String := Ada.Strings.Unbounded.To_String(str);
         begin
            return Float(This.all.parent.createInt(value(value'First+0), value(value'First+1), value(value'First+2), value(value'First+3))) / Float(This.all.parent.createInt(value(value'First+4), value(value'First+5), value(value'First+6), value(value'First+7)));
         end;
      end if;
   end getApertureValue;
   function getFlash(This: access EXIFParser) return Integer is
      str: Ada.Strings.Unbounded.Unbounded_String;
      length: Integer;
      typ: Integer;
   begin
      -- Daten auslesen
      length := This.getTagBinary(Globals.exif.Flash, str, typ);

      -- Überprüfung
      if length /= Globals.exif.Flash_Length or typ /= Globals.exif.Flash_Type then
         raise TagNotFound with "Flash error!";
      else
         declare
            value: String := Ada.Strings.Unbounded.To_String(str);
         begin
            return This.all.parent.createInt(value(value'First+0), value(value'First+1));
         end;
      end if;
   end getFlash;
   function getFocalLength(This: access EXIFParser) return Float is
      str: Ada.Strings.Unbounded.Unbounded_String;
      length: Integer;
      typ: Integer;
   begin
      -- Daten auslesen
      length := This.getTagBinary(Globals.exif.FocalLength, str, typ);

      -- Überprüfung
      if length /= Globals.exif.FocalLength_Length or typ /= Globals.exif.FocalLength_Type then
         raise TagNotFound with "FocalLength error!";
      else
         declare
            value: String := Ada.Strings.Unbounded.To_String(str);
         begin
            return Float(This.all.parent.createInt(value(value'First+0), value(value'First+1), value(value'First+2), value(value'First+3))) / Float(This.all.parent.createInt(value(value'First+4), value(value'First+5), value(value'First+6), value(value'First+7)));
         end;
      end if;
   end getFocalLength;
   function getExifImageWidth(This: access EXIFParser) return Integer is
      str: Ada.Strings.Unbounded.Unbounded_String;
      length: Integer;
      typ: Integer;
   begin
      -- Daten auslesen
      length := This.getTagBinary(Globals.exif.ExifImageWidth, str, typ);

      -- Überprüfung
      if length /= Globals.exif.ExifImageWidth_Length or typ not in Globals.exif.ExifImageWidth_Type then
         raise TagNotFound with "ExifImageWidth error!";
      else
         declare
            value: String := Ada.Strings.Unbounded.To_String(str);
         begin
            if typ = 3 then
               return This.all.parent.createInt(value(value'First+0), value(value'First+1));
            else
               return This.all.parent.createInt(value(value'First+0), value(value'First+1), value(value'First+2), value(value'First+3));
            end if;
         end;
      end if;
   end getExifImageWidth;
   function getExifImageHeight(This: access EXIFParser) return Integer is
      str: Ada.Strings.Unbounded.Unbounded_String;
      length: Integer;
      typ: Integer;
   begin
      -- Daten auslesen
      length := This.getTagBinary(Globals.exif.ExifImageHeight, str, typ);

      -- Überprüfung
      if length /= Globals.exif.ExifImageHeight_Length or typ not in Globals.exif.ExifImageHeight_Type then
         raise TagNotFound with "ExifImageHeight error!";
      else
         declare
            value: String := Ada.Strings.Unbounded.To_String(str);
         begin
            if typ = 3 then
               return This.all.parent.createInt(value(value'First+0), value(value'First+1));
            else
               return This.all.parent.createInt(value(value'First+0), value(value'First+1), value(value'First+2), value(value'First+3));
            end if;
         end;
      end if;
   end getExifImageHeight;

end EXIFParsers;
