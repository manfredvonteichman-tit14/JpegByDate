-- Verwendete Packages
limited with Pictures.TiffPictures; -- limited um Circular Dependency zu unterbrechen

-- Package für EXIFParser
package EXIFParsers is

   -- Typ anlegen
   type EXIFParser is tagged private;
   type EXIFParser_Access is access all EXIFParser; -- nicht verwenden, nur für EXIFFilter notwendig

   -- Konstruktor (binary ist EXIF SubIFD Directory Entries)
   function create(binary: String; tiff_parent: access Pictures.TiffPictures.TiffPicture) return access EXIFParser;
   -- Destruktor
   procedure destroy(This: access EXIFParser);

   -- Getterfunktionen
   function getISOSpeedRatings(This: access EXIFParser) return Integer;
   function getDateTimeOriginal(This: access EXIFParser) return String;
   function getShutterSpeedValue(This: access EXIFParser) return Float;
   function getApertureValue(This: access EXIFParser) return Float;
   function getFlash(This: access EXIFParser) return Integer;
   function getFocalLength(This: access EXIFParser) return Float;
   function getExifImageWidth(This: access EXIFParser) return Integer;
   function getExifImageHeight(This: access EXIFParser) return Integer;

   -- Exceptions
   TagNotFound: exception; -- EXIF-Tag existiert nicht

private
   -- Objektvariablen
   type EXIFParser is tagged
      record
         exif: access String := null; -- intern
         parent: access Pictures.TiffPictures.TiffPicture := null; -- extern
      end record;

end EXIFParsers;
