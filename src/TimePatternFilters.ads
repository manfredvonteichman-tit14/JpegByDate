-- Verwendete Packages
with Globals;
with EXIFFilters;
with EXIFParsers;
with Parameters;

-- Package für Filtermodul
package TimePatternFilters is

   -- Typ anlegen
   type TimePatternFilter is new EXIFFilters.Filter with private;

   -- Konstruktor
   overriding function create return access TimePatternFilter; -- DO NOT CALL
   not overriding function createP(params: access Parameters.Parameter) return access TimePatternFilter;
   -- Destruktor
   overriding procedure destroy(This: access TimePatternFilter; destroy_chain: Boolean := False);

   -- private Funktionen
   overriding function applyThis(This: access TimePatternFilter; exif: EXIFParsers.EXIFParser_Access) return Boolean;

private
   -- Objektvariablen
   type TimePatternFilter is new EXIFFilters.Filter with
      record
         params: access Parameters.Parameter; -- extern
      end record;

end TimePatternFilters;
