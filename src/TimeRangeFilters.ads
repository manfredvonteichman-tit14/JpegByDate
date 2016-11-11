-- Verwendete Packages
with Globals;
with EXIFFilters;
with EXIFParsers;
with Parameters;

-- Package für Filtermodul
package TimeRangeFilters is

   -- Typ anlegen
   type TimeRangeFilter is new EXIFFilters.Filter with private;

   -- Konstruktor
   overriding function create return access TimeRangeFilter; -- DO NOT CALL
   not overriding function createP(params: access Parameters.Parameter) return access TimeRangeFilter;
   -- Destruktor
   overriding procedure destroy(This: access TimeRangeFilter; destroy_chain: Boolean := False);

   -- private Funktionen
   overriding function applyThis(This: access TimeRangeFilter; exif: EXIFParsers.EXIFParser_Access) return Boolean;

private
   -- Objektvariablen
   type TimeRangeFilter is new EXIFFilters.Filter with
      record
         params: access Parameters.Parameter; -- extern
      end record;

end TimeRangeFilters;
