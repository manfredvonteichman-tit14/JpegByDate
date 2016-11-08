-- Verwendete Packages
--> NONE

-- Package f�r Filtermodul
package body Filters is

   -- Filter anwenden
   function apply(This: access Filter; str: String) return Boolean is
      That: access Filter'Class := This; -- notwendig, da weitere Calls dispatching sein m�ssen, Funktion das aber nicht ist
   begin
      if That.applyThis(str) then
         if This.all.next /= null then
            -- andere Filter anwenden
            return This.all.next.apply(str);
         else
            -- Letzter Filter in Kette hat gematcht
            return True;
         end if;
      else
         -- Eigener Filter matcht nicht
         return False;
      end if;
   end apply;

   -- Neuen Filter an Kette anf�gen
   procedure addNew(This: access Filter; newFilter: access Filter'Class) is
   begin
      if This.all.next /= null then
         -- Neuen Filter in Kette weiterreichen
         This.all.next.addNew(newFilter);
      else
         -- Neuen Filter an Ende von Kette anf�gen
         This.all.next := newFilter;
      end if;
   end addNew;

end Filters;
