-- Verwendete Packages
with FileFilters;
with Parameters;

-- Package für Filtermodul
package FileExtensionFilters is

   -- Typ anlegen
   type FileExtensionFilter is new FileFilters.Filter with private;

   -- Konstruktor
   overriding function create(params: access Parameters.Parameter) return access FileExtensionFilter;
   -- Destruktor
   overriding procedure destroy(This: access FileExtensionFilter; destroy_chain: Boolean := False);

   -- private Funktionen
   overriding function applyThis(This: access FileExtensionFilter; str: String) return Boolean;

private
   -- Objektvariablen
   type FileExtensionFilter is new FileFilters.Filter with
      record
         params: access Parameters.Parameter := null; -- extern
      end record;

end FileExtensionFilters;
