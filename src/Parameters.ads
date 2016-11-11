-- Verwendete Packages
with Globals;
with Ada.Strings.Unbounded;

-- Package f�r Parameter
package Parameters is

   -- Typ anlegen
   type Parameter is tagged private;

   -- Konstruktor
   function create return access Parameter;
   -- Destruktor
   procedure destroy(This: access Parameter);

   -- Werte setzen
   procedure setPath(This: access Parameter; path: String);
   procedure setDatePattern(This: access Parameter; datePattern: String);
   procedure setMinFileSize(This: access Parameter; minFileSize: Natural);
   procedure setMaxFileSize(This: access Parameter; maxFileSize: Natural);
   procedure setDateRangeStart(This: access Parameter; startDate: String);
   procedure setDateRangeFinish(This: access Parameter; finishDate: String);
   procedure setTimePattern(This: access Parameter; timePattern: String);
   procedure setTimeRangeStart(This: access Parameter; startTime: String);
   procedure setTimeRangeFinish(This: access Parameter; finishTime: String);
   procedure setMinWidth(This: access Parameter; minWidth: Natural);
   procedure setMaxWidth(This: access Parameter; maxWidth: Natural);
   procedure setMinHeight(This: access Parameter; minHeight: Natural);
   procedure setMaxHeight(This: access Parameter; maxHeight: Natural);

   -- Werte abfragen
   function getPath(This: access Parameter) return String;
   function getDatePattern(This: access Parameter) return String;
   function getMinFileSize(This: access Parameter) return Natural;
   function getMaxFileSize(This: access Parameter) return Natural;
   function getDateRangeStart(This: access Parameter) return String;
   function getDateRangeFinish(This: access Parameter) return String;
   function getTimePattern(This: access Parameter) return String;
   function getTimeRangeStart(This: access Parameter) return String;
   function getTimeRangeFinish(This: access Parameter) return String;
   function getMinWidth(This: access Parameter) return Natural;
   function getMaxWidth(This: access Parameter) return Natural;
   function getMinHeight(This: access Parameter) return Natural;
   function getMaxHeight(This: access Parameter) return Natural;

private
   -- Objektvariablen
   type Parameter is tagged
      record
         -- Vorinitialisiert, werden immer verwendet
         path: Ada.Strings.Unbounded.Unbounded_String;
         datePattern: String(1..10) := Globals.defaultDate;
         minFileSize: Natural := Globals.minFileSize;
         maxFileSize: Natural := Globals.maxFileSize;
         dateRangeStart: String(1..10) := Globals.defaultStartDate;
         dateRangeFinish: String(1..10) := Globals.defaultFinishDate;
         timePattern: String(1..8) := Globals.defaultTime;
         timeRangeStart: String(1..8) := Globals.defaultStartTime;
         timeRangeFinish: String(1..8) := Globals.defaultFinishTime;
         minWidth: Natural := Globals.minWidth;
         maxWidth: Natural := Globals.maxWidth;
         minHeight: Natural := Globals.minHeight;
         maxHeight: Natural := Globals.maxHeight;
      end record;

end Parameters;
