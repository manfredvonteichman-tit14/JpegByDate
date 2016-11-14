-- Verwendete Packages
with FileFilters;
with Parameters;

-- Package für Filtermodul
package FileNameFilters is

   -- Typ anlegen
   type FileNameFilter is new FileFilters.Filter with private;

   -- Konstruktor
   overriding function create(params: access Parameters.Parameter) return access FileNameFilter;
   -- Destruktor
   overriding procedure destroy(This: access FileNameFilter; destroy_chain: Boolean := False);

   -- private Funktionen
   overriding function applyThis(This: access FileNameFilter; str: String) return Boolean;

private
   -- Objektvariablen
   type FileNameFilter is new FileFilters.Filter with
      record
         params: access Parameters.Parameter := null; -- extern
      end record;

end FileNameFilters;
