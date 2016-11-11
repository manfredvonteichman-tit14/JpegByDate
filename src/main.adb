-- Verwendete Packages
with CommandlineParsers;
with ConsoleOutputs;
with DatePatternFilters;
with DateRangeFilters;
with EXIFFilters;
with FileFilters;
with FileExtensionFilters;
with FileListers;
with FilesystemListers;
with FileHandlers;
with Inputs;
with Outputs;
with TimePatternFilters;
with TimeRangeFilters;

-- Hauptfunktion
procedure Main is
   input: access Inputs.Input'Class := CommandlineParsers.create;
   efilter: access EXIFFilters.Filter'Class := null;
   ffilter: access FileFilters.Filter'Class := FileExtensionFilters.create;
   files: access FileListers.FileLister'Class;
   handler: access FileHandlers.FileHandler;
   output: access Outputs.Output'Class := ConsoleOutputs.create;
begin
   -- Eingabe verarbeiten
   input.parse(output);
   output.display("DEBUG OUTPUT - DatePattern: " & input.getParams.getDatePattern);
   output.display("DEBUG OUTPUT - DateRangeStart: " & input.getParams.getDateRangeStart);
   output.display("DEBUG OUTPUT - DateRangeFinish: " & input.getParams.getDateRangeFinish);
   output.display("DEBUG OUTPUT - minFileSize: " & Natural'Image(input.getParams.getMinFileSize));
   output.display("DEBUG OUTPUT - maxFileSize: " & Natural'Image(input.getParams.getMaxFileSize));
   output.display("DEBUG OUTPUT - TimePattern: " & input.getParams.getTimePattern);
   output.display("DEBUG OUTPUT - TimeRangeStart: " & input.getParams.getTimeRangeStart);
   output.display("DEBUG OUTPUT - TimeRangeFinish: " & input.getParams.getTimeRangeFinish);

   -- EXIF Filter anlegen nach Eingabeparametern
   efilter := DatePatternFilters.createP(input.getParams);
   efilter.addNew(DateRangeFilters.createP(input.getParams));
   efilter.addNew(TimePatternFilters.createP(input.getParams));
   efilter.addNew(TimeRangeFilters.createP(input.getParams));

   -- Dateien Auflisten und Filtern vorbereiten
   files := FilesystemListers.create(input.getParams, ffilter);

   -- Dateien verarbeiten und anzeigen
   handler := FileHandlers.create(files, efilter);
   handler.exec(output);

   -- Aufräumen
   input.destroy;
   efilter.destroy(True);
   ffilter.destroy(True);
   files.destroy;
   handler.destroy;
   output.destroy;

end Main;
