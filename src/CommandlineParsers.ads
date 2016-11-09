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

private
   -- Objektvariablen
   type CommandlineParser is new Inputs.Input with
      record
         parameters: access Parameters.Parameter := null; -- intern
      end record;

end CommandlineParsers;
