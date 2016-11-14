-- Verwendete Packages
with Globals;
with EXIFFilters;
with EXIFParsers;
with Parameters;

-- Package f�r Filtermodul
package DatePatternFilters is

   -- Typ anlegen
   type DatePatternFilter is new EXIFFilters.Filter with private;

   -- Konstruktor
   overriding function create(params: access Parameters.Parameter) return access DatePatternFilter;
   -- Destruktor
   overriding procedure destroy(This: access DatePatternFilter; destroy_chain: Boolean := False);

   -- private Funktionen
   overriding function applyThis(This: access DatePatternFilter; exif: EXIFParsers.EXIFParser_Access) return Boolean;

private
   -- Objektvariablen
   type DatePatternFilter is new EXIFFilters.Filter with
      record
         params: access Parameters.Parameter := null; -- extern
      end record;

end DatePatternFilters;
