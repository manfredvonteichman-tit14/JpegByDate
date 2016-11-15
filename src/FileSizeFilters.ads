-- Verwendete Packages
with FileFilters;
with Parameters;

-- Package für Filtermodul
package FileSizeFilters is

   -- Typ anlegen
   type FileSizeFilter is new FileFilters.Filter with private;

   -- Konstruktor
   overriding function create(params: access Parameters.Parameter) return access FileSizeFilter;
   -- Destruktor
   overriding procedure destroy(This: access FileSizeFilter; destroy_chain: Boolean := False);

   -- private Funktionen
   overriding function applyThis(This: access FileSizeFilter; str: String) return Boolean;

private
   -- Objektvariablen
   type FileSizeFilter is new FileFilters.Filter with
      record
         params: access Parameters.Parameter := null; -- extern
      end record;

end FileSizeFilters;
