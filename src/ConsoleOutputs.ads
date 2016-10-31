-- Verwendete Packages
with Outputs;

-- Package f�r Ausgabemodul
package ConsoleOutputs is

   -- Typ anlegen
   type ConsoleOutput is new Outputs.Output with null record;

   -- Konstruktor
   overriding function create return access ConsoleOutput;

   -- Anzeigefunktion f�r String
   overriding procedure display(This: access ConsoleOutput; str: String);

end ConsoleOutputs;
