-- Verwendete Packages
--> NONE

-- Package für globale Konstanten
package Globals is

   -- Konstanten Definition
   regexPatternDateWithWildcards: constant String := "^[0-9?]{4}-[0-9?]{2}-[0-9?]{2}$";
   regexPatternDateRange: constant String := "^[0-9]{4}-[0-9]{2}-[0-9]{2}$";
   regexPatternTimeWithWildcards: constant String := "^[0-9?]{2}:[0-9?]{2}:[0-9?]{2}$";
   regexPatternTimeRange: constant String := "^[0-9]{2}:[0-9]{2}:[0-9]{2}$";
   regexPatternFiletype: constant String := ".*\.(jpg|jpeg|jpe|jfif)$";
   defaultDate: constant String := "....:..:.."; -- beliebiges Datum (Regex Pattern)
   defaultPath: constant String := "."; -- aktuelles Ausfuehrungsverzeichnis
   minFileSize: constant Natural := Natural'First;
   maxFileSize: constant Natural := Natural'Last;
   defaultStartDate: constant String := "0000-01-01";
   defaultFinishDate: constant String := "9999-12-31";
   defaultTime: constant String := "..:..:.."; -- beliebige Uhrzeit (Regex Pattern)
   defaultStartTime: constant String := "00:00:00";
   defaultFinishTime: constant String := "23:59:59";

   -- Kommandozeilenparameter
   CommandLine: constant String := "d: t: -minSize= -maxSize= -startDate= -finDate= -startTime= -finTime=";

   -- EXIF-Tags
   package exif is
      tag: constant Integer := 16#8769#;
      tag_Type: constant Integer := 4;
      tag_Length: constant Integer := 1;
      DateTimeOriginal: constant Integer := 16#9003#;
      DateTimeOriginal_Type: constant Integer := 2;
      DateTimeOriginal_Length: constant Integer := 20;
   end exif;

end Globals;
