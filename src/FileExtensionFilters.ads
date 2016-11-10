-- Verwendete Packages
with Globals;
with FileFilters;
with GNAT.Regpat;

-- Package für Filtermodul
package FileExtensionFilters is

   -- Typ anlegen
   type FileExtensionFilter is new FileFilters.Filter with null record;

   -- Konstruktor
   overriding function create return access FileExtensionFilter;
   -- Destruktor
   overriding procedure destroy(This: access FileExtensionFilter; destroy_chain: Boolean := False);

   -- private Funktionen
   overriding function applyThis(This: access FileExtensionFilter; str: String) return Boolean;

private
   -- Regex vorbereiten fuer Dateiendungen
   compiledFiletypeRegex: constant GNAT.Regpat.Pattern_Matcher := GNAT.Regpat.Compile(Globals.regexPatternFiletype);

end FileExtensionFilters;
