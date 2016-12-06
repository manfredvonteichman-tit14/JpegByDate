-- Verwendete Packages
with Outputs;
with Ada.Text_IO;

-- Package für Ausgabemodul
package CSVOutputs is

   -- Typ anlegen
   type CSVOutput is new Outputs.Output with private;

   -- Konstruktor
   overriding function create return access CSVOutput;
   function create(file: String; separator: String) return access CSVOutput;
   -- Destruktor
   overriding procedure destroy(This: access CSVOutput);

   -- Anzeigefunktion für String
   overriding procedure display(This: access CSVOutput; str: String);

   -- Exceptions
   Impossible_Output: exception; -- Fehler bei Datei-IO

private
   -- Objektvariablen
   type CSVOutput is new Outputs.Output with
      record
         file: Ada.Text_IO.File_Type;
      end record;

end CSVOutputs;
