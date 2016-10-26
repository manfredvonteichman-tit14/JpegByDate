-- Verwendete Packages
with Globals;

-- Package f�r Ausgabemodul
package Output is
   -- Anzeigefunktion f�r Zahl
   procedure displayN(Number: Integer);

   -- Anzeigefunktion f�r Zahlenarray
   procedure displayA(Arr: Globals.NumArr);

   -- Anzeigefunktion f�r Stringarray
   procedure display(strings: Globals.StrArr);

end Output;
