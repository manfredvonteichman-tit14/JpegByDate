-- Verwendete Packages
with Globals;
with Pictures.TiffPictures;
with Ada.Unchecked_Deallocation;

-- Package f�r EXIFParser
package body EXIFParsers is

   -- Konstruktor
   function create(binary: String; tiff_parent: access Pictures.TiffPictures.TiffPicture) return access EXIFParser is
      parser: access EXIFParser := new EXIFParser;
   begin
      -- Dateigr��e �berpr�fen
      if (binary'Length mod 12) = 0 then
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
      -- externe Variablen nicht l�schen
      -- interne Variablen l�schen
      if This.all.exif /= null then
         Free_String(str);
      end if;
      Free(obj);
   end;

   -- Getterfunktionen
   function getDateTimeOriginal(This: access EXIFParser) return String is
      I: Integer := 0; -- Start am ersten Directory
      ptr: Integer;
   begin
      -- EXIF SubIFD durchsuchen
      while I <= This.all.exif'Length loop
         -- DateTimeOriginal Tag gefunden
         if This.all.parent.createInt(This.all.exif(This.all.exif'First+I+0), This.all.exif(This.all.exif'First+I+1)) = Globals.exif.DateTimeOriginal and
           This.all.parent.createInt(This.all.exif(This.all.exif'First+I+2), This.all.exif(This.all.exif'First+I+3)) = Globals.exif.DateTimeOriginal_Type and
           This.all.parent.createInt(This.all.exif(This.all.exif'First+I+4), This.all.exif(This.all.exif'First+I+5), This.all.exif(This.all.exif'First+I+6), This.all.exif(This.all.exif'First+I+7)) = Globals.exif.DateTimeOriginal_Length then
            -- String auslesen und zur�ck geben
            ptr := This.all.parent.createInt(This.all.exif(This.all.exif'First+I+8), This.all.exif(This.all.exif'First+I+9), This.all.exif(This.all.exif'First+I+10), This.all.exif(This.all.exif'First+I+11)) + 1; -- 0-Index w�re sch�ner...
            return This.all.parent.readBinary(ptr, ptr+Globals.exif.DateTimeOriginal_Length-1);
         end if;

         -- N�chstes Directory
         I := I + 12;
      end loop;

      -- Nichts gefunden
      return "";
   end getDateTimeOriginal;

end EXIFParsers;
