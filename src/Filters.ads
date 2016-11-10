-- Verwendete Packages
--> NONE

-- Filter Interface
generic
   type FilterElement_T(<>) is private;
package Filters is

   -- Interfacedefinition
   type Filter is abstract tagged private;

   -- Interfacefunktionen
   function create return access Filter is abstract;
   procedure destroy(This: access Filter; destroy_chain: Boolean := False) is abstract;

   -- Filter anwenden
   -- DO NOT OVERLOAD!
   function apply(This: access Filter; param: FilterElement_T) return Boolean;

   -- Neuen Filter an Kette anf�gen
   -- DO NOT OVERLOAD!
   procedure addNew(This: access Filter; newFilter: access Filter'Class);

   -- R�ckgabe des n�chsten Filters
   -- DO NOT OVERLOAD!
   function getNext(This: access Filter) return access Filter'Class;

   -- private Funktionen
   -- DO NOT CALL EXTERNALLY! Au�er es soll wirklich nur dieser Filter ausgef�hrt werden
   -- Sollte private sein, allerdings funktioniert dann die Vererbung mit abstraktem Typ nicht... (mit C++ h�tte das funktioniert!) -> Wenn m�glich L�sung suchen
   function applyThis(This: access Filter; param: FilterElement_T) return Boolean is abstract;

private
   -- Objektvariablen
   type Filter is abstract tagged
      record
         next: access Filter'Class := null; -- extern -> Abfrage Kette zu l�schen
      end record;

end Filters;
