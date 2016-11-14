-- Verwendete Packages
with Ada.Unchecked_Deallocation;
with GNAT.Regpat;

-- Package für Filtermodul
package body DatePatternFilters is

   -- Konstruktor
   function create(params: access Parameters.Parameter) return access DatePatternFilter is
      filter: access DatePatternFilter := new DatePatternFilter;
   begin
      filter.all.params := params;
      return filter;
   end create;

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
   begin
      -- Shortcut falls Standardwert verwendet wird
      if This.all.params.flagDatePattern = False then
         return True;
      end if;

      -- Eigentlicher Filter
      declare
         exif_tmp: access EXIFParsers.EXIFParser := exif;
         date: String := exif_tmp.getDateTimeOriginal;
      begin
         -- Regex Match des EXIF Datums mit dem Parameter-Date-Pattern
         return Boolean'(GNAT.Regpat.Match(Expression => This.all.params.getDatePattern, Data => date(date'First..date'First+9)));

      -- Fehler behandeln
      exception
         -- EXIF-Tag existiert nicht
         when E: EXIFParsers.TagNotFound =>
            return False;

         -- Alle anderen Fehler
         when E: others =>
            return False;
      end;
   end applyThis;

end DatePatternFilters;
