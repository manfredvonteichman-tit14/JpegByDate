-- Verwendete Packages
with Inputs;
with CommandlineParsers;
with FileFilters;
with FileExtensionFilters;
with FileListers;
with FilesystemListers;
with FileHandlers;
with Outputs;
with ConsoleOutputs;

-- Hauptfunktion
procedure Main is
   input: access Inputs.Input'Class := CommandlineParsers.create;
   filter: access FileFilters.Filter'Class := FileExtensionFilters.create;
   files: access FileListers.FileLister'Class;
   handler: access FileHandlers.FileHandler;
   output: access Outputs.Output'Class := ConsoleOutputs.create;
begin
   -- Eingabe verarbeiten
   input.parse(output);
   output.display("DEBUG OUTPUT - DatePattern: " & input.getParams.getDatePattern);
   output.display("DEBUG OUTPUT - minFileSize: " & Natural'Image(input.getParams.getMinFileSize));
   output.display("DEBUG OUTPUT - maxFileSize: " & Natural'Image(input.getParams.getMaxFileSize));

   -- Dateien Auflisten und Filtern vorbereiten
   files := FilesystemListers.create(input.getParams, filter);

   -- Dateien verarbeiten und anzeigen
   handler := FileHandlers.create(files, input.getParams);
   handler.exec(output);

   -- Aufräumen
   input.destroy;
   filter.destroy(True);
   files.destroy;
   handler.destroy;
   output.destroy;

end Main;
