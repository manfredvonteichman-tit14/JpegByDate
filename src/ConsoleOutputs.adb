-- Verwendete Packages
with Ada.Text_IO;

-- Package f�r Ausgabemodul
package body ConsoleOutputs is

   -- Konstruktor
   function create return access ConsoleOutput is
   begin
      return new ConsoleOutput;
   end create;

   -- Anzeigefunktion f�r String
   procedure display(This: access ConsoleOutput; str: String) is
   begin
      Ada.Text_IO.Put_Line(str);
   end display;

end ConsoleOutputs;
