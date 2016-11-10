-- Verwendete Packages
--> NONE

-- Package für Filtermodul
package body Filters is

   -- Filter anwenden
   function apply(This: access Filter; param: FilterElement_T) return Boolean is
      That: access Filter'Class := This; -- notwendig, da weitere Calls dispatching sein müssen, Funktion das aber nicht ist
   begin
      if That.applyThis(param) then
         if This.all.next /= null then
            -- andere Filter anwenden
            return This.all.next.apply(param);
         else
            -- Letzter Filter in Kette hat gematcht
            return True;
         end if;
      else
         -- Eigener Filter matcht nicht
         return False;
      end if;
   end apply;

   -- Neuen Filter an Kette anfügen
   procedure addNew(This: access Filter; newFilter: access Filter'Class) is
   begin
      if This.all.next /= null then
         -- Neuen Filter in Kette weiterreichen
         This.all.next.addNew(newFilter);
      else
         -- Neuen Filter an Ende von Kette anfügen
         This.all.next := newFilter;
      end if;
   end addNew;

   -- Rückgabe des nächsten Filters
   function getNext(This: access Filter) return access Filter'Class is
   begin
      return This.all.next;
   end getNext;

end Filters;
