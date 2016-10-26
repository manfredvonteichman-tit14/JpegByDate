-- Verwendete Packages
with Globals;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded;

-- Package f�r Ausgabemodul
package body Outputs is
   -- Anzeigefunktion f�r String
   procedure display(str: String) is
   begin
      -- Unbounded konvertieren um Anzeige zu erm�glichen
      Put_Line(str);
   end display;

   -- Anzeigefunktion f�r Stringarray
   procedure display(strings: Globals.StrArr) is
   begin
      Array_Loop:
      for I in strings'Range loop
         -- Unbounded konvertieren um Anzeige zu erm�glichen
         Put_Line(Ada.Strings.Unbounded.To_String(strings(I)));
      end loop Array_Loop;
   end display;

end Outputs;
