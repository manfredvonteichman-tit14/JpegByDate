-- Verwendete Packages
with Ada.Unchecked_Deallocation;

-- Package für Filtermodul
package body TimeRangeFilters is

   -- Konstruktor
   function create return access TimeRangeFilter is
   begin
      raise Constraint_Error with "Missing Parameters!";
      return null;
   end create;
   function createP(params: access Parameters.Parameter) return access TimeRangeFilter is
      filter: access TimeRangeFilter := new TimeRangeFilter;
   begin
      filter.all.params := params;
      return filter;
   end createP;

   -- Destruktor
   procedure destroy(This: access TimeRangeFilter; destroy_chain: Boolean := False) is
      type type_access is access all TimeRangeFilter;
      procedure Free is new Ada.Unchecked_Deallocation(TimeRangeFilter, type_access);
      obj: type_access := type_access(This);
   begin
      -- externe Variablen in diesem Fall doch löschen
      if destroy_chain = True and This.getNext /= null then
         This.getNext.destroy(destroy_chain);
      end if;
      Free(obj);
   end;

   -- private Funktionen
   overriding function applyThis(This: access TimeRangeFilter; exif: EXIFParsers.EXIFParser_Access) return Boolean is
   begin
      -- Shortcut falls Standardwert verwendet wird
      if This.all.params.flagTimeRange = False then
         return True;
      end if;

      -- Eigentlicher Filter
      declare
         exif_tmp: access EXIFParsers.EXIFParser := exif;
         time: String := exif_tmp.getDateTimeOriginal;
         startTime: String := This.all.params.getTimeRangeStart;
         finishTime: String := This.all.params.getTimeRangeFinish;
         value: Integer;
         start: Integer;
         finish: Integer;
      begin
         -- Magic -> Primitive Umrechnung von Uhrzeit in Integer zum einfacheren Vergleich
         value := Integer'Value(time(time'First+11..time'First+12)) * 10000 + Integer'Value(time(time'First+14..time'First+15)) * 100 + Integer'Value(time(time'First+17..time'First+18));
         start := Integer'Value(startTime(startTime'First..startTime'First+1)) * 10000 + Integer'Value(startTime(startTime'First+3..startTime'First+4)) * 100 + Integer'Value(startTime(startTime'First+6..startTime'First+7));
         finish := Integer'Value(finishTime(finishTime'First..finishTime'First+1)) * 10000 + Integer'Value(finishTime(finishTime'First+3..finishTime'First+4)) * 100 + Integer'Value(finishTime(finishTime'First+6..finishTime'First+7));

         -- Bereich über Mitternacht?
         if finish < start then
            -- Vergleich der Zeitwerte über Nacht
            if value >= start or value <= finish then
               return True;
            else
               return False;
            end if;
         else
            -- Vergleich der Zeitwerte am Tag
            if value >= start and value <= finish then
               return True;
            else
               return False;
            end if;
         end if;

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

end TimeRangeFilters;
