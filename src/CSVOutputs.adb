-- Verwendete Packages
with Globals;
with Ada.Strings.Fixed;
with Ada.Strings.Maps;
with Ada.Unchecked_Deallocation;

-- Package für Ausgabemodul
package body CSVOutputs is

   -- Konstruktor
   function create return access CSVOutput is
   begin
      return create(Globals.defaultCSV, Globals.defaultCSVseparator);
   end create;
   function create(file: String; separator: String) return access CSVOutput is
      output: access CSVOutput := new CSVOutput;
   begin
      -- Datei öffnen (Überschreiben)
      Ada.Text_IO.Create(output.file, Ada.Text_IO.Out_File, file);
      Ada.Text_IO.Put_Line(output.file, Ada.Strings.Fixed.Translate(Globals.csvHeader, Ada.Strings.Maps.To_Mapping(From => ",", To => separator)));
      return output;

   -- Fehlerbehandlung
   exception
      -- Alle Exceptions abfangen, weil keine genaue Definition verfügbar
      -- Fehlermeldung ausgeben
      when E: others =>
         raise Impossible_Output with "Unable to create CSV-export file!";
   end create;

   -- Destruktor
   procedure destroy(This: access CSVOutput) is
      type type_access is access all CSVOutput;
      procedure Free is new Ada.Unchecked_Deallocation(CSVOutput, type_access);
      obj: type_access := type_access(This);
   begin
      declare
      begin
         Ada.Text_IO.Close(This.all.file);
      exception
         -- Alle Exceptions abfangen, weil keine genaue Definition verfügbar
         -- Keine Aktion, wenn schließen nicht geht ist eh alles vorbei
         when E: others =>
            null;
      end;
      Free(obj);
   end;

   -- Anzeigefunktion für String
   procedure display(This: access CSVOutput; str: String) is
   begin
      Ada.Text_IO.Put_Line(This.all.file, str);
   end display;

end CSVOutputs;
