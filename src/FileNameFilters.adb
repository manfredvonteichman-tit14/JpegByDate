-- Verwendete Packages
with Ada.Unchecked_Deallocation;
with GNAT.Regpat;

-- Package für Filtermodul
package body FileNameFilters is

   -- Konstruktor
   function create(params: access Parameters.Parameter) return access FileNameFilter is
      filter: access FileNameFilter := new FileNameFilter;
   begin
      filter.all.params := params;
      return filter;
   end create;

   -- Destruktor
   procedure destroy(This: access FileNameFilter; destroy_chain: Boolean := False) is
      type type_access is access all FileNameFilter;
      procedure Free is new Ada.Unchecked_Deallocation(FileNameFilter, type_access);
      obj: type_access := type_access(This);
   begin
      -- externe Variablen in diesem Fall doch löschen
      if destroy_chain = True and This.getNext /= null then
         This.getNext.destroy(destroy_chain);
      end if;
      Free(obj);
   end;

   -- private Funktionen
   overriding function applyThis(This: access FileNameFilter; str: String) return Boolean is
   begin
      -- Shortcut falls Standardwert verwendet wird
      if This.all.params.flagFilePattern = False then
         return True;
      end if;

      -- Regex Match des Dateinamens mit Pattern
      return Boolean'(GNAT.Regpat.Match(Expression => This.all.params.getFilePattern, Data => str));

   end applyThis;

end FileNameFilters;
