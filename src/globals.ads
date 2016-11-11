-- Verwendete Packages
--> NONE

-- Package f�r globale Konstanten
package Globals is

   -- Konstanten Definition
   regexPatternDateWithWildcards: constant String := "[0-9?]{4}-[0-9?]{2}-[0-9?]{2}$";
   regexPatternDateRange: constant String := "[0-9]{4}-[0-9]{2}-[0-9]{2}_[0-9]{4}-[0-9]{2}-[0-9]{2}$";
   regexPatternFiletype: constant String := ".*\.(jpg|jpeg|jpe|jfif)$";
   defaultDate: constant String := "....:..:.."; -- beliebiges Datum (Regex Pattern)
   defaultPath: constant String := "."; -- aktuelles Ausfuehrungsverzeichnis
   minFileSize: constant Natural := Natural'First;
   maxFileSize: constant Natural := Natural'Last;

   -- Kommandozeilenparameter
   CommandLine: constant String := "d: -minSize= -maxSize= -dateRange=";

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
