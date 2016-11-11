-- Verwendete Packages
with Globals;
with Ada.Strings.Fixed;
with Ada.Strings.Maps;
with Ada.Unchecked_Deallocation;
with GNAT.Command_Line;
with GNAT.Regpat;

-- Package fuer Eingabemodul
package body CommandlineParsers is

   -- Konstruktor
   function create return access CommandlineParser is
      input: access CommandlineParser := new CommandlineParser;
   begin
      input.all.parameters := Parameters.create;
      return input;
   end create;

   -- Destruktor
   procedure destroy(This: access CommandlineParser) is
      type type_access is access all CommandlineParser;
      procedure Free is new Ada.Unchecked_Deallocation(CommandlineParser, type_access);
      obj: type_access := type_access(This);
   begin
      -- interne Variablen löschen
      if This.all.parameters /= null then
         This.all.parameters.destroy;
      end if;
      Free(obj);
   end;

   -- Kommandozeile verarbeiten
   procedure parse(This: access CommandlineParser; error_log: access Outputs.Output'Class) is
   begin
      -- Pfad bestimmen
      This.all.parameters.setPath(Globals.defaultPath);

      -- Alle Parameter durcharbeiten
      loop
         declare
         begin
            -- Verwende UNIX getopts Funktion
            case GNAT.Command_Line.Getopt(Globals.CommandLine) is
            -- Schöner wäre es die Parameter als Konstanten zu definieren, ist aber nciht ohne weiteres möglich
            when 'd' =>
               -- Regulärer Ausdruck für ISO Date Pattern Matching
               -- Prüfen ob das eingegebene Datum einem Datum mit Wildcards der Form
               -- 2016-01-?? entspricht.
               if Boolean'(GNAT.Regpat.Match(Expression => Globals.regexPatternDateWithWildcards, Data => GNAT.Command_Line.Parameter)) then
                  -- Ersetze die Fragezeichen (CLI-Wildcards) mit Punkten (Regex-Wildcards) und Bindestriche durch Doppelpunkte (EXIF Trennzeichen)
                  -- und hinterlege dieses Pattern in Parameters
                  This.all.parameters.setDatePattern(Ada.Strings.Fixed.Translate(Ada.Strings.Fixed.Translate(GNAT.Command_Line.Parameter, Ada.Strings.Maps.To_Mapping(From => "?", To => ".")), Ada.Strings.Maps.To_Mapping(From => "-", To => ":")));
               else
                  raise Constraint_Error with "Invalid date format!";
               end if;
            when 't' =>
               -- Prüfen ob die eingegebene Zeit dem richtigen Format entspricht
               -- 22:??:01
               if Boolean'(GNAT.Regpat.Match(Expression => Globals.regexPatternTimeWithWildcards, Data => GNAT.Command_Line.Parameter)) then
                  -- Ersetze die Fragezeichen (CLI-Wildcards) mit Punkten (Regex-Wildcards)
                  -- und hinterlege dieses Pattern in Parameters
                  This.all.parameters.setTimePattern(Ada.Strings.Fixed.Translate(GNAT.Command_Line.Parameter, Ada.Strings.Maps.To_Mapping(From => "?", To => ".")));
               else
                  raise Constraint_Error with "Invalid time format!";
               end if;
            when '-' =>
               -- Lange Switches
               if GNAT.Command_Line.Full_Switch = "-minSize" then
                  -- Minimum-Dateigröße
                  This.all.parameters.setMinFileSize(Natural'Value(GNAT.Command_Line.Parameter));
               elsif GNAT.Command_Line.Full_Switch = "-maxSize" then
                  -- Maximum-Dateigröße
                  This.all.parameters.setMaxFileSize(Natural'Value(GNAT.Command_Line.Parameter));
               elsif GNAT.Command_Line.Full_Switch = "-startDate" then
                  -- Regulärer Ausdruck für ISO Date Pattern Bereich
                  -- Prüfen ob das eingegebene Datum einem Datum entspricht
                  if Boolean'(GNAT.Regpat.Match(Expression => Globals.regexPatternDateRange, Data => GNAT.Command_Line.Parameter)) then
                     This.all.parameters.setDateRangeStart(GNAT.Command_Line.Parameter);
                  else
                     raise Constraint_Error with "Invalid date-range format!";
                  end if;
               elsif GNAT.Command_Line.Full_Switch = "-finDate" then
                  -- Regulärer Ausdruck für ISO Date Pattern Bereich
                  -- Prüfen ob das eingegebene Datum einem Datum entspricht
                  if Boolean'(GNAT.Regpat.Match(Expression => Globals.regexPatternDateRange, Data => GNAT.Command_Line.Parameter)) then
                     This.all.parameters.setDateRangeFinish(GNAT.Command_Line.Parameter);
                  else
                     raise Constraint_Error with "Invalid date-range format!";
                  end if;
               elsif GNAT.Command_Line.Full_Switch = "-startTime" then
                  -- Prüfen ob die eingegebene Zeit dem richtigen Format entspricht
                  if Boolean'(GNAT.Regpat.Match(Expression => Globals.regexPatternTimeRange, Data => GNAT.Command_Line.Parameter)) then
                     This.all.parameters.setTimeRangeStart(GNAT.Command_Line.Parameter);
                  else
                     raise Constraint_Error with "Invalid time-range format!";
                  end if;
               elsif GNAT.Command_Line.Full_Switch = "-finTime" then
                  -- Prüfen ob die eingegebene Zeit dem richtigen Format entspricht
                  if Boolean'(GNAT.Regpat.Match(Expression => Globals.regexPatternTimeRange, Data => GNAT.Command_Line.Parameter)) then
                     This.all.parameters.setTimeRangeFinish(GNAT.Command_Line.Parameter);
                  else
                     raise Constraint_Error with "Invalid time-range format!";
                  end if;
               end if;
            when others =>
               exit;
            end case;

         exception
            -- Ungültiger Switch
            when E: GNAT.Command_Line.Invalid_Switch =>
               if error_log /= null then
                  error_log.display("Invalid command line switch '" & GNAT.Command_Line.Full_Switch & "'");
               end if;

            -- Ungültiger Parameter
            when E: GNAT.Command_Line.Invalid_Parameter =>
               if error_log /= null then
                  error_log.display("Invalid command line parameter '" & GNAT.Command_Line.Parameter & "' for command line switch '" & GNAT.Command_Line.Full_Switch & "'");
               end if;

            -- Problem bei der Parameterverarbeitung
            when E: Constraint_Error =>
               if error_log /= null then
                  error_log.display("Invalid parameter value '" & GNAT.Command_Line.Parameter & "' for command line switch '" & GNAT.Command_Line.Full_Switch & "'");
               end if;

               -- Anderer Fehler bei der Verarbeitung
            when E: others =>
               if error_log /= null then
                  error_log.display("Unknown error parsing command line!");
               end if;
         end;

      end loop;
   end parse;

   -- Getter Funktionen
   function getParams(This: access CommandlineParser) return access Parameters.Parameter is
   begin
      return This.all.parameters;
   end getParams;

end CommandlineParsers;
