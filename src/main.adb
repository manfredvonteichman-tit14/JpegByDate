-- Verwendete Packages
with CSVOutputs;
with CommandlineParsers;
with ConsoleOutputs;
with DatePatternFilters;
with DateRangeFilters;
with EXIFFilters;
with FileFilters;
with FileExtensionFilters;
with FileListers;
with FileNameFilters;
with FileSizeFilters;
with FilesystemListers;
with FileHandlers;
with Globals;
with ImageSizeFilters;
with Inputs;
with Outputs;
with TimePatternFilters;
with TimeRangeFilters;
with Ada.Strings.Fixed;
with Ada.Strings.Maps;

-- Hauptfunktion
-- Programm wird mit modifizierter Stackgröße (256MB) gelinkt -> notwendig für große Bilder zum Einlesen
procedure Main is
   input: access Inputs.Input'Class := CommandlineParsers.create;
   efilter: access EXIFFilters.Filter'Class := null;
   ffilter: access FileFilters.Filter'Class := null;
   files: access FileListers.FileLister'Class := null;
   handler: access FileHandlers.FileHandler := null;
   output: access Outputs.Output'Class := ConsoleOutputs.create;
begin
   -- Eingabe verarbeiten
   input.parse(output);
   if input.getParams.getDebug then
      output.display("DEBUG OUTPUT - Path: " & input.getParams.getPath);
      output.display("DEBUG OUTPUT - PathRecursionEnabled: " & Boolean'Image(input.getParams.getPathRecursion));
      output.display("DEBUG OUTPUT - FullFileName: " & Boolean'Image(input.getParams.getFullName));
      output.display("DEBUG OUTPUT - FileNamePattern: " & input.getParams.getFilePattern);
      output.display("DEBUG OUTPUT - DatePattern: " & input.getParams.getDatePattern);
      output.display("DEBUG OUTPUT - DateRangeStart: " & input.getParams.getDateRangeStart);
      output.display("DEBUG OUTPUT - DateRangeFinish: " & input.getParams.getDateRangeFinish);
      output.display("DEBUG OUTPUT - minFileSize: " & Natural'Image(input.getParams.getMinFileSize));
      output.display("DEBUG OUTPUT - maxFileSize: " & Natural'Image(input.getParams.getMaxFileSize));
      output.display("DEBUG OUTPUT - TimePattern: " & input.getParams.getTimePattern);
      output.display("DEBUG OUTPUT - TimeRangeStart: " & input.getParams.getTimeRangeStart);
      output.display("DEBUG OUTPUT - TimeRangeFinish: " & input.getParams.getTimeRangeFinish);
      output.display("DEBUG OUTPUT - minWidth: " & Natural'Image(input.getParams.getMinWidth));
      output.display("DEBUG OUTPUT - maxWidth: " & Natural'Image(input.getParams.getMaxWidth));
      output.display("DEBUG OUTPUT - minHeight: " & Natural'Image(input.getParams.getMinHeight));
      output.display("DEBUG OUTPUT - maxHeight: " & Natural'Image(input.getParams.getMaxHeight));
      output.display("DEBUG OUTPUT - CSVfile: " & input.getParams.getCSV);
      output.display("DEBUG OUTPUT - RenameFiles: " & Boolean'Image(input.getParams.getRename));
   end if;

   -- Hilfe anzeigen
   if input.getParams.flagHelp then
      output.display(input.getParams.getHelp);
   end if;

   -- Dateinamenfilter anlegen
   ffilter := FileExtensionFilters.create(input.getParams);
   ffilter.addNew(FileNameFilters.create(input.getParams));
   ffilter.addNew(FileSizeFilters.create(input.getParams));

   -- EXIF Filter anlegen nach Eingabeparametern
   efilter := DatePatternFilters.create(input.getParams);
   efilter.addNew(DateRangeFilters.create(input.getParams));
   efilter.addNew(TimePatternFilters.create(input.getParams));
   efilter.addNew(TimeRangeFilters.create(input.getParams));
   efilter.addNew(ImageSizeFilters.create(input.getParams));

   -- Dateien Auflisten und Filtern vorbereiten
   files := FilesystemListers.create(input.getParams, ffilter);

   -- Dateien verarbeiten und anzeigen
   if input.getParams.flagCSV then
      -- Wechsle von Console-IO zu Datei wenn Export gewünscht
      declare
         tmp_out: access Outputs.Output'Class;
      begin
         -- CSV Datei anlegen
         tmp_out := CSVOutputs.create(input.getParams.getCSV, input.getParams.getCSVseparator);
         output.destroy;
         output := tmp_out;

      -- Fehlerbehandlung
      exception
         -- Dateierstellen fehlgeschlagen
         when E: CSVOutputs.Impossible_Output =>
            output.display("ERROR! Creating CSV-export file '" & input.getParams.getCSV & "' failed. Printing to console instead.");
            output.display(Ada.Strings.Fixed.Translate(Globals.csvHeader, Ada.Strings.Maps.To_Mapping(From => ",", To => input.getParams.getCSVseparator)));
      end;
   end if;
   handler := FileHandlers.create(files, efilter, input.getParams);
   handler.exec(output);

   -- Aufräumen
   input.destroy;
   efilter.destroy(True);
   ffilter.destroy(True);
   files.destroy;
   handler.destroy;
   output.destroy;

end Main;
