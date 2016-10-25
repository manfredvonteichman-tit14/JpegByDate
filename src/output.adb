-- Verwendete Packages
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

-- Package f�r Ausgabemodul
package body Output is
   -- Anzeigefunktion f�r Zahl
   procedure displayN(Number: Integer) is
   begin
      Put_Line("Number:");
      Put(Number);
      New_Line(1);
   end displayN;

   -- Anzeigefunktion f�r Zahlenarray
   procedure displayA(Arr: NumArr) is
   begin
      Put_Line("Numbers:");
      Array_Loop:
      for I in Arr'Range loop
         Put(Arr(I));
      New_Line(1);
      end loop Array_Loop;
   end displayA;

   -- Anzeigefunktion f�r Stringarray
   procedure display(strings: StrArr) is
   begin
      Array_Loop:
      for I in strings'Range loop
         -- Unbounded konvertieren um Anzeige zu erm�glichen
         Put_Line(Ada.Strings.Unbounded.To_String(strings(I)));
      end loop Array_Loop;
   end display;

end Output;
