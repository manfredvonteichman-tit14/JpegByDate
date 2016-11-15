-- Verwendete Packages
with CommandlineParsers;
with ConsoleOutputs;
with DatePatternFilters;
with DateRangeFilters;
with EXIFFilters;
with FileFilters;
with FileExtensionFilters;
with FileListers;
with FileNameFilters;
with FilesystemListers;
with FileHandlers;
with ImageSizeFilters;
with Inputs;
with Outputs;
with TimePatternFilters;
with TimeRangeFilters;

-- Hauptfunktion
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

   -- Hilfe anzeigen
   if input.getParams.flagHelp then
      output.display(input.getParams.getHelp);
   end if;

   -- Dateinamenfilter anlegen
   ffilter := FileExtensionFilters.create(input.getParams);
   ffilter.addNew(FileNameFilters.create(input.getParams));

   -- EXIF Filter anlegen nach Eingabeparametern
   efilter := DatePatternFilters.create(input.getParams);
   efilter.addNew(DateRangeFilters.create(input.getParams));
   efilter.addNew(TimePatternFilters.create(input.getParams));
   efilter.addNew(TimeRangeFilters.create(input.getParams));
   efilter.addNew(ImageSizeFilters.create(input.getParams));

   -- Dateien Auflisten und Filtern vorbereiten
   files := FilesystemListers.create(input.getParams, ffilter);

   -- Dateien verarbeiten und anzeigen
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
