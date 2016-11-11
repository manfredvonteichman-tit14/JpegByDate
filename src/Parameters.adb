-- Verwendete Packages
with Ada.Unchecked_Deallocation;

-- Package für Parameter
package body Parameters is

   -- Konstruktor
   function create return access Parameter is
   begin
      return new Parameter;
   end create;

   -- Destruktor
   procedure destroy(This: access Parameter) is
      type type_access is access all Parameter;
      procedure Free is new Ada.Unchecked_Deallocation(Parameter, type_access);
      obj: type_access := type_access(This);
   begin
      Free(obj);
   end;

   -- Werte setzen
   procedure setPath(This: access Parameter; path: String) is
   begin
      This.all.path := Ada.Strings.Unbounded.To_Unbounded_String(path);
   end setPath;
   procedure setDatePattern(This: access Parameter; datePattern: String) is
   begin
      This.all.datePattern := datePattern;
   end setDatePattern;
   procedure setMinFileSize(This: access Parameter; minFileSize: Natural) is
   begin
      This.all.minFileSize := minFileSize;
   end setMinFileSize;
   procedure setMaxFileSize(This: access Parameter; maxFileSize: Natural) is
   begin
      This.all.maxFileSize := maxFileSize;
   end setMaxFileSize;
   procedure setDateRangeStart(This: access Parameter; startDate: String) is
   begin
      This.all.dateRangeStart := startDate;
   end setDateRangeStart;
   procedure setDateRangeFinish(This: access Parameter; finishDate: String) is
   begin
      This.all.dateRangeFinish := finishDate;
   end setDateRangeFinish;

   procedure setTimePattern(This: access Parameter; timePattern: String) is
   begin
      This.all.timePattern := timePattern;
   end setTimePattern;
   procedure setTimeRangeStart(This: access Parameter; startTime: String) is
   begin
      This.all.timeRangeStart := startTime;
   end setTimeRangeStart;
   procedure setTimeRangeFinish(This: access Parameter; finishTime: String) is
   begin
      This.all.timeRangeFinish := finishTime;
   end setTimeRangeFinish;

   -- Werte abfragen
   function getPath(This: access Parameter) return String is
   begin
      return Ada.Strings.Unbounded.To_String(This.all.path);
   end getPath;
   function getDatePattern(This: access Parameter) return String is
   begin
      return This.all.datePattern;
   end getDatePattern;
   function getMinFileSize(This: access Parameter) return Natural is
   begin
      return This.all.minFileSize;
   end getMinFileSize;
   function getMaxFileSize(This: access Parameter) return Natural is
   begin
      return This.all.maxFileSize;
   end getMaxFileSize;
   function getDateRangeStart(This: access Parameter) return String is
   begin
      return This.all.dateRangeStart;
   end getDateRangeStart;
   function getDateRangeFinish(This: access Parameter) return String is
   begin
      return This.all.dateRangeFinish;
   end getDateRangeFinish;
   function getTimePattern(This: access Parameter) return String is
   begin
      return This.all.timePattern;
   end getTimePattern;
   function getTimeRangeStart(This: access Parameter) return String is
   begin
      return This.all.timeRangeStart;
   end getTimeRangeStart;
   function getTimeRangeFinish(This: access Parameter) return String is
   begin
      return This.all.timeRangeFinish;
   end getTimeRangeFinish;

end Parameters;
