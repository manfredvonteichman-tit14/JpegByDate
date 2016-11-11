-- Verwendete Packages
with Ada.Unchecked_Deallocation;
with GNAT.Regpat;

-- Package f�r Filtermodul
package body TimePatternFilters is

   -- Konstruktor
   function create return access TimePatternFilter is
   begin
      raise Constraint_Error with "Missing Parameters!";
      return null;
   end create;
   function createP(params: access Parameters.Parameter) return access TimePatternFilter is
      filter: access TimePatternFilter := new TimePatternFilter;
   begin
      filter.all.params := params;
      return filter;
   end createP;

   -- Destruktor
   procedure destroy(This: access TimePatternFilter; destroy_chain: Boolean := False) is
      type type_access is access all TimePatternFilter;
      procedure Free is new Ada.Unchecked_Deallocation(TimePatternFilter, type_access);
      obj: type_access := type_access(This);
   begin
      -- externe Variablen in diesem Fall doch l�schen
      if destroy_chain = True and This.getNext /= null then
         This.getNext.destroy(destroy_chain);
      end if;
      Free(obj);
   end;

   -- private Funktionen
   overriding function applyThis(This: access TimePatternFilter; exif: EXIFParsers.EXIFParser_Access) return Boolean is
      exif_tmp: access EXIFParsers.EXIFParser := exif;
      time: String := exif_tmp.getDateTimeOriginal;
   begin
      -- Regex Match des EXIF Datums mit dem Parameter-Date-Pattern
      return Boolean'(GNAT.Regpat.Match(Expression => This.all.params.getTimePattern, Data => time(time'First+11..time'First+18)));
   end applyThis;

end TimePatternFilters;