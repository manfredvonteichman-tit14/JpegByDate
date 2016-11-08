-- Verwendete Packages
--> NONE

-- Filter Interface
package Filters is

   -- Interfacedefinition
   type Filter is abstract tagged private;

   -- Interfacefunktionen
   function create return access Filter is abstract;
   procedure destroy(This: access Filter) is abstract;

   -- Filter anwenden
   -- DO NOT OVERLOAD!
   function apply(This: access Filter; str: String) return Boolean;

   -- Neuen Filter an Kette anf�gen
   -- DO NOT OVERLOAD!
   procedure addNew(This: access Filter; newFilter: access Filter'Class);

   -- private Funktionen
   -- DO NOT CALL EXTERNALLY! Au�er es soll wirklich nur dieser Filter ausgef�hrt werden
   -- Sollte private sein, allerdings funktioniert dann die Vererbung mit abstraktem Typ nicht... (mit C++ h�tte das funktioniert!) -> Wenn m�glich L�sung suchen
   function applyThis(This: access Filter; str: String) return Boolean is abstract;

private
   -- Objektvariablen
   type Filter is abstract tagged
      record
         next: access Filter'Class := null; -- extern -> trotzdem intern l�schen, da Kette
      end record;

end Filters;
