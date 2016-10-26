-- Verwendete Packages
with Globals;

-- Package f�r Ausgabemodul
package Outputs is
   -- Typ anlegen
   type Output is tagged null record;
   type Output_Type is access Output;

   -- Anzeigefunktion f�r Zahl
   procedure displayN(This: Output_Type; Number: Integer);
   -- Anzeigefunktion f�r Zahlenarray
   procedure displayA(This: Output_Type; Arr: Globals.NumArr);
   -- Anzeigefunktion f�r Stringarray
   procedure display(strings: Globals.StrArr);


end Outputs;
