-- Verwendete Packages
with Pictures;
limited with Pictures.TiffPictures;
with Ada.Strings.Unbounded;

-- Package f�r JpegPicture als Childpackage von Picture
package Pictures.JpegPictures is

   -- Typ anlegen
   type JpegPicture is new Pictures.Picture with private;

   -- Konstruktor
   not overriding function create(name: String; buffer: Ada.Strings.Unbounded.Unbounded_String) return access JpegPicture;
   -- Destruktor
   overriding procedure destroy(This: access JpegPicture);

   -- EXIF abfragen
   overriding function hasEXIF(This: access JpegPicture) return Boolean;
   overriding function getEXIF(This: access JpegPicture) return access EXIFParsers.EXIFParser;

   -- Statische Buffercheckfunktion
   function isJpeg(buffer: Ada.Strings.Unbounded.Unbounded_String) return Boolean;

private
   -- Objektvariablen
   type JpegPicture is new Pictures.Picture with
      record
         tiff_sublayer: access TiffPictures.TiffPicture := null; -- intern
      end record;

end Pictures.JpegPictures;
