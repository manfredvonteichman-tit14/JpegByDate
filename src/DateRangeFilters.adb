-- Verwendete Packages
with Ada.Unchecked_Deallocation;

-- Package f�r Filtermodul
package body DateRangeFilters is

   -- Konstruktor
   function create(params: access Parameters.Parameter) return access DateRangeFilter is
      filter: access DateRangeFilter := new DateRangeFilter;
   begin
      filter.all.params := params;
      return filter;
   end create;

   -- Destruktor
   procedure destroy(This: access DateRangeFilter; destroy_chain: Boolean := False) is
      type type_access is access all DateRangeFilter;
      procedure Free is new Ada.Unchecked_Deallocation(DateRangeFilter, type_access);
      obj: type_access := type_access(This);
   begin
      -- externe Variablen in diesem Fall doch l�schen
      if destroy_chain = True and This.getNext /= null then
         This.getNext.destroy(destroy_chain);
      end if;
      Free(obj);
   end;

   -- private Funktionen
   overriding function applyThis(This: access DateRangeFilter; exif: EXIFParsers.EXIFParser_Access) return Boolean is
   begin
      -- Shortcut falls Standardwert verwendet wird
      if This.all.params.flagDateRange = False then
         return True;
      end if;

      -- Eigentlicher Filter
      declare
         exif_tmp: access EXIFParsers.EXIFParser := exif;
         date: String := exif_tmp.getDateTimeOriginal;
         startDate: String := This.all.params.getDateRangeStart;
         finishDate: String := This.all.params.getDateRangeFinish;
         value: Integer;
         start: Integer;
         finish: Integer;
      begin
         -- Magic -> Primitive Umrechnung von Datum in Integer zum einfacheren Vergleich
         value := Integer'Value(date(date'First..date'First+3)) * 10000 + Integer'Value(date(date'First+5..date'First+6)) * 100 + Integer'Value(date(date'First+8..date'First+9));
         start := Integer'Value(startDate(startDate'First..startDate'First+3)) * 10000 + Integer'Value(startDate(startDate'First+5..startDate'First+6)) * 100 + Integer'Value(startDate(startDate'First+8..startDate'First+9));
         finish := Integer'Value(finishDate(finishDate'First..finishDate'First+3)) * 10000 + Integer'Value(finishDate(finishDate'First+5..finishDate'First+6)) * 100 + Integer'Value(finishDate(finishDate'First+8..finishDate'First+9));

         -- Vergleich der Datumswerte
         if value >= start and value <= finish then
            return True;
         else
            return False;
         end if;
      end;

   -- Fehler behandeln
   exception
      -- EXIF-Tag existiert nicht
      when E: EXIFParsers.TagNotFound =>
         return False;

      -- Alle anderen Fehler
      when E: others =>
         return False;
   end applyThis;

end DateRangeFilters;
