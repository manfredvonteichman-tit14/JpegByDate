-- Verwendete Packages
with Globals;
with EXIFFilters;
with EXIFParsers;
with Parameters;

-- Package für Filtermodul
package DateRangeFilters is

   -- Typ anlegen
   type DateRangeFilter is new EXIFFilters.Filter with private;

   -- Konstruktor
   overriding function create(params: access Parameters.Parameter) return access DateRangeFilter;
   -- Destruktor
   overriding procedure destroy(This: access DateRangeFilter; destroy_chain: Boolean := False);

   -- private Funktionen
   overriding function applyThis(This: access DateRangeFilter; exif: EXIFParsers.EXIFParser_Access) return Boolean;

private
   -- Objektvariablen
   type DateRangeFilter is new EXIFFilters.Filter with
      record
         params: access Parameters.Parameter := null; -- extern
      end record;

end DateRangeFilters;
