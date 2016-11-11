-- Verwendete Packages
with Ada.Unchecked_Deallocation;

-- Package für Filtermodul
package body DateRangeFilters is

   -- Konstruktor
   function create return access DateRangeFilter is
   begin
      raise Constraint_Error with "Missing Parameters!";
      return null;
   end create;
   function createP(params: access Parameters.Parameter) return access DateRangeFilter is
      filter: access DateRangeFilter := new DateRangeFilter;
   begin
      filter.all.params := params;
      return filter;
   end createP;

   -- Destruktor
   procedure destroy(This: access DateRangeFilter; destroy_chain: Boolean := False) is
      type type_access is access all DateRangeFilter;
      procedure Free is new Ada.Unchecked_Deallocation(DateRangeFilter, type_access);
      obj: type_access := type_access(This);
   begin
      -- externe Variablen in diesem Fall doch löschen
      if destroy_chain = True and This.getNext /= null then
         This.getNext.destroy(destroy_chain);
      end if;
      Free(obj);
   end;

   -- private Funktionen
   overriding function applyThis(This: access DateRangeFilter; exif: EXIFParsers.EXIFParser_Access) return Boolean is
      exif_tmp: access EXIFParsers.EXIFParser := exif;
      date: String := exif_tmp.getDateTimeOriginal;
      dateRange: String := This.all.params.getDateRange;
      value: Integer;
      start: Integer;
      finish: Integer;
   begin
      -- Magic -> Primitive Umrechnung von Datum in Integer zum einfacheren Vergleich
      value := Integer'Value(date(date'First..date'First+3)) * 10000 + Integer'Value(date(date'First+5..date'First+6)) * 100 + Integer'Value(date(date'First+8..date'First+9));
      start := Integer'Value(dateRange(dateRange'First..dateRange'First+3)) * 10000 + Integer'Value(dateRange(dateRange'First+5..dateRange'First+6)) * 100 + Integer'Value(dateRange(dateRange'First+8..dateRange'First+9));
      finish := Integer'Value(dateRange(dateRange'First+11..dateRange'First+14)) * 10000 + Integer'Value(dateRange(dateRange'First+16..dateRange'First+17)) * 100 + Integer'Value(dateRange(dateRange'First+19..dateRange'First+20));

      -- Vergleich der Datumswerte
      if value >= start and value <= finish then
         return True;
      else
         return False;
      end if;
   end applyThis;

end DateRangeFilters;
