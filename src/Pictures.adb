-- Verwendete Packages
with Pictures.JpegPictures;
with Pictures.TiffPictures;

-- Package für Picturemodul
package body Pictures is

   -- Bild erstellen
   function create(name: String; buffer: Ada.Strings.Unbounded.Unbounded_String) return access Picture'Class is
   begin
      -- Jpeg Test
      declare
      begin
         -- Versuchen Bild anzulegen
         return JpegPictures.create(name, buffer); -- indirekter Call auf isJpeg()

      -- Unknown_Format ignorieren, Datei ist kein JPEG -> nächstes Format versuchen
      -- Illegal_Format wird durchgelassen, Datei ist JPEG, enthält aber Fehler -> nächstes Format unnötig
      exception
         -- Unbekanntes Bildformat
         when E: Unknown_Format =>
            null;
      end;

      -- Tiff Test
      declare
      begin
         -- Versuchen Bild anzulegen
         return TiffPictures.create(name, buffer); -- indirekter Call auf isTiff()

      -- Unknown_Format ignorieren, Datei ist kein TIFF -> nächstes Format versuchen
      -- Illegal_Format wird durchgelassen, Datei ist TIFF, enthält aber Fehler -> nächstes Format unnötig
      exception
         -- Unbekanntes Bildformat
         when E: Unknown_Format =>
            null;
      end;

      -- Kein bekannter Typ
      raise Unknown_Format with "File does not match any supported picture format!";

   end create;

   -- Name und Pfad des Bildes setzen
   procedure setName(This: access Picture; name: String) is
   begin
      This.all.name := Ada.Strings.Unbounded.To_Unbounded_String(name);
   end setName;

   -- Name und Pfad des Bildes zurückgeben
   function getName(This: access Picture) return String is
   begin
      return Ada.Strings.Unbounded.To_String(This.all.name);
   end getName;

end Pictures;
