-- Verwendete Packages
with Globals;

-- Package f�r Ausgabemodul
package Outputs is
   -- Typ anlegen
   type Output is tagged null record;
   type Output_Type is access Output;

   -- Anzeigefunktion f�r String
   procedure display(str: String);

   -- Anzeigefunktion f�r Stringarray
   procedure display(strings: Globals.StrArr);

end Outputs;
