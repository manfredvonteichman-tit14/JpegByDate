-- Verwendete Packages
--> NONE

-- Package für globale Konstanten
package Globals is

   -- Konstanten Definition
   regexPatternDateWithWildcards: constant String := "^[0-9?]{4}-[0-9?]{2}-[0-9?]{2}$";
   regexPatternDateRange: constant String := "^[0-9]{4}-[0-9]{2}-[0-9]{2}$";
   regexPatternTimeWithWildcards: constant String := "^[0-9?]{2}:[0-9?]{2}:[0-9?]{2}$";
   regexPatternTimeRange: constant String := "^[0-9]{2}:[0-9]{2}:[0-9]{2}$";
   regexPatternFiletype: constant String := ".*\.([Jj][Pp][Gg]|[Jj][Pp][Ee][Gg]|[Jj][Pp][Ee]|[Jj][Ff][Ii][Ff]|[Tt][Ii][Ff]|[Tt][Ii][Ff][Ff])$"; -- case insensitive
   regexPatternSimpleName: constant String := "[^\\/]*$"; -- Dateinamen mit Backslash für Windows und Forwardslash für Linux
   regexPatternFileExtension: constant String := "[^\.]*$";
   defaultDate: constant String := "....:..:.."; -- beliebiges Datum (Regex Pattern)
   defaultPath: constant String := "."; -- aktuelles Ausfuehrungsverzeichnis
   pathRecursionEnabled: constant Boolean := False;
   filePattern: constant String := ".*";
   defaultName: constant Boolean := False;
   minFileSize: constant Natural := Natural'First;
   maxFileSize: constant Natural := Natural'Last;
   defaultStartDate: constant String := "0000-01-01";
   defaultFinishDate: constant String := "9999-12-31";
   defaultTime: constant String := "..:..:.."; -- beliebige Uhrzeit (Regex Pattern)
   defaultStartTime: constant String := "00:00:00";
   defaultFinishTime: constant String := "23:59:59";
   minWidth: constant Natural := Natural'First;
   maxWidth: constant Natural := Natural'Last;
   minHeight: constant Natural := Natural'First;
   maxHeight: constant Natural := Natural'Last;
   defaultRenameFiles: constant Boolean := False;
   maxRenameRetries: constant Positive := 99;
   defaultCSV: constant String := "export.csv";
   defaultDebug: constant Boolean := False;

   -- Hilfetext
   help_string: constant String :=
     "JpegByDate is a program to display and filter pictures by EXIF information" & ASCII.LF &
     "By running the program without parameters all files containing EXIF information will be displayed. Otherwise all files matching the filter will be displayed." & ASCII.LF & ASCII.LF &
     "Command line switch description:" & ASCII.LF &
     "-c" & ASCII.LF &
     "    Display full path and name instead of just the simple name" & ASCII.LF &
     "-d YYYY-MM-DD" & ASCII.LF &
     "    Set the date to filter the pictures" & ASCII.LF &
     "    Allowed are digits and ? as a wildcard" & ASCII.LF &
     "-e file" & ASCII.LF &
     "    Stores EXIF parameters in specified file" & ASCII.LF &
     "-f filepattern" & ASCII.LF &
     "    Specify a pattern to filter filenames" & ASCII.LF &
     "    Use charcters or * (general wildcard) or ? (single character wildcard)" & ASCII.LF &
     "-h" & ASCII.LF &
     "    Display this help text" & ASCII.LF &
     "-p path" & ASCII.LF &
     "    Specifiy a path to search for pictures (absolute or relative)" & ASCII.LF &
     "-r" & ASCII.LF &
     "    Enable recursive directory search" & ASCII.LF &
     "-t HH:MM:SS" & ASCII.LF &
     "    Set the time to filter the pictures" & ASCII.LF &
     "    Allowed are digits and ? as a wildcard" & ASCII.LF &
     "--minSize=number" & ASCII.LF &
     "    Specify the minimum picture filesize" & ASCII.LF &
     "--maxSize=number" & ASCII.LF &
     "    Specify the maximum picture filesize" & ASCII.LF &
     "--minWidth=number" & ASCII.LF &
     "    Specify the minimum picture width" & ASCII.LF &
     "--maxWidth=number" & ASCII.LF &
     "    Specify the maximum picture width" & ASCII.LF &
     "--minHeight=number" & ASCII.LF &
     "    Specify the minimum picture height" & ASCII.LF &
     "--maxHeight=number" & ASCII.LF &
     "    Specify the maximum picture height" & ASCII.LF &
     "--startDate=YYYY-MM-DD" & ASCII.LF &
     "    Set the starting date to filter the pictures" & ASCII.LF &
     "    Allowed are only digits" & ASCII.LF &
     "--finDate=YYYY-MM-DD" & ASCII.LF &
     "    Set the finishing date to filter the pictures" & ASCII.LF &
     "    Allowed are only digits" & ASCII.LF &
     "--startTime=HH:MM:SS" & ASCII.LF &
     "    Set the starting time to filter the pictures" & ASCII.LF &
     "    Allowed are only digits" & ASCII.LF &
     "--finTime=HH:MM:SS" & ASCII.LF &
     "    Set the finishing time to filter the pictures" & ASCII.LF &
     "    Allowed are only digits" & ASCII.LF &
     "--fileRegex=regex" & ASCII.LF &
     "    Specify a pattern to filter filenames" & ASCII.LF &
     "    Use standard regular expression syntax to set the filter" & ASCII.LF &
     "--rename" & ASCII.LF &
     "    Renames all matching pictures. New filename will be YYYY-MM-DD-HH-MM-SS.EXT" & ASCII.LF &
     "--debug" & ASCII.LF &
     "    Displays debug information for parameters and pictures" & ASCII.LF & ASCII.LF;

   -- Kommandozeilenparameter
   CommandLine: constant String := "c d: e: f: h p: r t: -minSize= -maxSize= -startDate= -finDate= -startTime= -finTime= -minWidth= -maxWidth= -minHeight= -maxHeight= -fileRegex= -rename -debug";

   -- EXIF-Tags
   package exif is
      directory_length: constant Integer := 12;
      tag: constant Integer := 16#8769#;
      tag_Type: constant Integer := 4;
      tag_Length: constant Integer := 1;
      ISOSpeedRatings: constant Integer := 16#8827#;
      ISOSpeedRatings_Type: constant Integer := 3;
      ISOSpeedRatings_Length: constant Integer := 1;
      DateTimeOriginal: constant Integer := 16#9003#;
      DateTimeOriginal_Type: constant Integer := 2;
      DateTimeOriginal_Length: constant Integer := 20;
      ShutterSpeedValue: constant Integer := 16#9201#;
      ShutterSpeedValue_Type: constant Integer := 10;
      ShutterSpeedValue_Length: constant Integer := 1;
      ApertureValue: constant Integer := 16#9202#;
      ApertureValue_Type: constant Integer := 5;
      ApertureValue_Length: constant Integer := 1;
      Flash: constant Integer := 16#9209#;
      Flash_Type: constant Integer := 3;
      Flash_Length: constant Integer := 1;
      FocalLength: constant Integer := 16#920A#;
      FocalLength_Type: constant Integer := 5;
      FocalLength_Length: constant Integer := 1;
      ExifImageWidth: constant Integer := 16#A002#;
      subtype ExifImageWidth_Type is Integer range 3..4;
      ExifImageWidth_Length: constant Integer := 1;
      ExifImageHeight: constant Integer := 16#A003#;
      subtype ExifImageHeight_Type is Integer range 3..4;
      ExifImageHeight_Length: constant Integer := 1;
   end exif;

end Globals;
