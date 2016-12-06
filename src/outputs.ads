-- Verwendete Packages
--> NONE

-- Ausgabe Interface
package Outputs is

   -- Interfacedefinition
   -- ACHTUNG! Ist kein Interface, sondern voll abstrakte Klasse.
   -- Dies ist notwendig, da 'limited' von Interface nicht auf Subklasse vererbt wird.
   -- Subklasse CSVOutput muss aber 'limited' sein und eine nachträgliche Definition dazu ist nicht möglich.
   type Output is abstract tagged limited null record; -- quasi interface

   -- Interfacefunktionen
   function create return access Output is abstract;
   procedure destroy(This: access Output) is abstract;
   procedure display(This: access Output; str: String) is abstract;

end Outputs;
