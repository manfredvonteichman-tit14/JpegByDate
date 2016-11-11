-- Verwendete Packages
with Globals;
with EXIFFilters;
with EXIFParsers;
with Parameters;

-- Package für Filtermodul
package ImageSizeFilters is

   -- Typ anlegen
   type ImageSizeFilter is new EXIFFilters.Filter with private;

   -- Konstruktor
   overriding function create return access ImageSizeFilter; -- DO NOT CALL
   not overriding function createP(params: access Parameters.Parameter) return access ImageSizeFilter;
   -- Destruktor
   overriding procedure destroy(This: access ImageSizeFilter; destroy_chain: Boolean := False);

   -- private Funktionen
   overriding function applyThis(This: access ImageSizeFilter; exif: EXIFParsers.EXIFParser_Access) return Boolean;

private
   -- Objektvariablen
   type ImageSizeFilter is new EXIFFilters.Filter with
      record
         params: access Parameters.Parameter; -- extern
      end record;

end ImageSizeFilters;
