-- Verwendete Packages
with Ada.Unchecked_Deallocation;
with GNAT.Regpat;

-- Package für Filtermodul
package body FileExtensionFilters is

   -- Konstruktor
   function create(params: access Parameters.Parameter) return access FileExtensionFilter is
      filter: access FileExtensionFilter := new FileExtensionFilter;
   begin
      filter.all.params := params;
      return filter;
   end create;

   -- Destruktor
   procedure destroy(This: access FileExtensionFilter; destroy_chain: Boolean := False) is
      type type_access is access all FileExtensionFilter;
      procedure Free is new Ada.Unchecked_Deallocation(FileExtensionFilter, type_access);
      obj: type_access := type_access(This);
   begin
      -- externe Variablen in diesem Fall doch löschen
      if destroy_chain = True and This.getNext /= null then
         This.getNext.destroy(destroy_chain);
      end if;
      Free(obj);
   end;

   -- private Funktionen
   overriding function applyThis(This: access FileExtensionFilter; str: String) return Boolean is
   begin
      return Boolean'(GNAT.Regpat.Match(Expression => This.all.params.getFileExtensionPattern, Data => str));
   end applyThis;

end FileExtensionFilters;
