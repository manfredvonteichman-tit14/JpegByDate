-- Verwendete Packages
with Ada.Strings.Unbounded;

-- Package f�r Ausgabemodul
package Output is

   -- Array Definition
   type NumArr is array (Positive range <>) of Integer;
   type StrArr is array (Positive range <>) of Ada.Strings.Unbounded.Unbounded_String;

   -- Anzeigefunktion f�r Zahl
   procedure displayN(Number: Integer);

   -- Anzeigefunktion f�r Zahlenarray
   procedure displayA(Arr: NumArr);

   -- Anzeigefunktion f�r Stringarray
   procedure display(strings: StrArr);

end Output;
