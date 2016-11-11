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
      This.all.Flag_path := True;
   end setPath;
   procedure setDatePattern(This: access Parameter; datePattern: String) is
   begin
      This.all.datePattern := datePattern;
      This.all.Flag_datePattern := True;
   end setDatePattern;
   procedure setMinFileSize(This: access Parameter; minFileSize: Natural) is
   begin
      This.all.minFileSize := minFileSize;
      This.all.Flag_fileSize := True;
   end setMinFileSize;
   procedure setMaxFileSize(This: access Parameter; maxFileSize: Natural) is
   begin
      This.all.maxFileSize := maxFileSize;
      This.all.Flag_fileSize := True;
   end setMaxFileSize;
   procedure setDateRangeStart(This: access Parameter; startDate: String) is
   begin
      This.all.dateRangeStart := startDate;
      This.all.Flag_dateRange := True;
   end setDateRangeStart;
   procedure setDateRangeFinish(This: access Parameter; finishDate: String) is
   begin
      This.all.dateRangeFinish := finishDate;
      This.all.Flag_dateRange := True;
   end setDateRangeFinish;
   procedure setTimePattern(This: access Parameter; timePattern: String) is
   begin
      This.all.timePattern := timePattern;
      This.all.Flag_timePattern := True;
   end setTimePattern;
   procedure setTimeRangeStart(This: access Parameter; startTime: String) is
   begin
      This.all.timeRangeStart := startTime;
      This.all.Flag_timeRange := True;
   end setTimeRangeStart;
   procedure setTimeRangeFinish(This: access Parameter; finishTime: String) is
   begin
      This.all.timeRangeFinish := finishTime;
      This.all.Flag_timeRange := True;
   end setTimeRangeFinish;
   procedure setMinWidth(This: access Parameter; minWidth: Natural) is
   begin
      This.all.minWidth := minWidth;
      This.all.Flag_imageSize := True;
   end setMinWidth;
   procedure setMaxWidth(This: access Parameter; maxWidth: Natural) is
   begin
      This.all.maxWidth := maxWidth;
      This.all.Flag_imageSize := True;
   end setMaxWidth;
   procedure setMinHeight(This: access Parameter; minHeight: Natural) is
   begin
      This.all.minHeight := minHeight;
      This.all.Flag_imageSize := True;
   end setMinHeight;
   procedure setMaxHeight(This: access Parameter; maxHeight: Natural) is
   begin
      This.all.maxHeight := maxHeight;
      This.all.Flag_imageSize := True;
   end setMaxHeight;

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
   function getMinWidth(This: access Parameter) return Natural is
   begin
      return This.all.minWidth;
   end getMinWidth;
   function getMaxWidth(This: access Parameter) return Natural is
   begin
      return This.all.maxWidth;
   end getMaxWidth;
   function getMinHeight(This: access Parameter) return Natural is
   begin
      return This.all.minHeight;
   end getMinHeight;
   function getMaxHeight(This: access Parameter) return Natural is
   begin
      return This.all.maxHeight;
   end getMaxHeight;

   -- Flags abfragen
   function flagPath(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_path;
   end flagPath;
   function flagFileSize(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_fileSize;
   end flagFileSize;
   function flagDatePattern(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_datePattern;
   end flagDatePattern;
   function flagDateRange(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_dateRange;
   end flagDateRange;
   function flagTimePattern(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_timePattern;
   end flagTimePattern;
   function flagTimeRange(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_timeRange;
   end flagTimeRange;
   function flagImageSize(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_imageSize;
   end flagImageSize;

end Parameters;
