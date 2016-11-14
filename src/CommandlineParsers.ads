-- Verwendete Packages
with Inputs;
with Parameters;
with Outputs;

-- Package für Eingabemodul
package CommandlineParsers is

   -- Typ anlegen
   type CommandlineParser is new Inputs.Input with private;

   -- Konstruktor
   overriding function create return access CommandlineParser;
   -- Destruktor
   overriding procedure destroy(This: access CommandlineParser);

   -- Eingabewerte verarbeiten mit optionaler Fehlerausgabe
   overriding procedure parse(This: access CommandlineParser; error_log: access Outputs.Output'Class);

   -- Getter Funktionen
   overriding function getParams(This: access CommandlineParser) return access Parameters.Parameter;

   -- EXTERNE KONFIGURATION
   -- Argument an GNAT exportieren um Vorverarbeitung der Kommandozeile einzuschränken
   -- Argument Expansion soll nicht durchgeführt werden, d.h. ? und * werden nicht automatisch auf mehrere Dateinamen erweitert
   -- https://gcc.gnu.org/onlinedocs/gnat_ugn/Disabling-Command-Line-Argument-Expansion.html
   Do_Argv_Expansion: Integer := 0;
   pragma Export(C, Do_Argv_Expansion, "__gnat_do_argv_expansion");

private
   -- Objektvariablen
   type CommandlineParser is new Inputs.Input with
      record
         parameters: access Parameters.Parameter := null; -- intern
      end record;

end CommandlineParsers;
