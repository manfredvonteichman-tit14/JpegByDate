-- Verwendete Packages
with Ada.Unchecked_Deallocation;

-- Package für Filtermodul
package body DatePatternFilters is

   -- Konstruktor
   function create return access DatePatternFilter is
   begin
      raise Constraint_Error with "Missing Parameters!";
      return null;
   end create;
   function createP(params: access Parameters.Parameter) return access DatePatternFilter is
      filter: access DatePatternFilter := new DatePatternFilter;
   begin
      filter.all.params := params;
      return filter;
   end createP;

   -- Destruktor
   procedure destroy(This: access DatePatternFilter; destroy_chain: Boolean := False) is
      type type_access is access all DatePatternFilter;
      procedure Free is new Ada.Unchecked_Deallocation(DatePatternFilter, type_access);
      obj: type_access := type_access(This);
   begin
      -- externe Variablen in diesem Fall doch löschen
      if destroy_chain = True and This.getNext /= null then
         This.getNext.destroy(destroy_chain);
      end if;
      Free(obj);
   end;

   -- private Funktionen
   overriding function applyThis(This: access DatePatternFilter; exif: EXIFParsers.EXIFParser_Access) return Boolean is
      exif_tmp: access EXIFParsers.EXIFParser := exif;
      date: String := exif_tmp.getDateTimeOriginal;
   begin
      -- Regex Match des EXIF Datums mit dem Parameter-Date-Pattern
      return Boolean'(GNAT.Regpat.Match(Expression => This.all.params.getDatePattern, Data => date(date'First..date'First+9)));
   end applyThis;

end DatePatternFilters;
