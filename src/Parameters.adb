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
   procedure setPathRecursion(This: access Parameter; recursive: Boolean) is
   begin
      This.all.pathRecursion := recursive;
      This.all.Flag_pathRecursion := True;
   end setPathRecursion;
   procedure setFilePattern(This: access Parameter; pattern: String) is
   begin
      This.all.filePattern := Ada.Strings.Unbounded.To_Unbounded_String(pattern);
      This.all.Flag_filePattern := True;
   end setFilePattern;
   procedure setFileExtensionPattern(This: access Parameter; pattern: String) is
   begin
      This.all.fileExtensionPattern := Ada.Strings.Unbounded.To_Unbounded_String(pattern);
      This.all.Flag_fileExtensionPattern := True;
   end setFileExtensionPattern;
   procedure setFullName(This: access Parameter; fullName: Boolean) is
   begin
      This.all.fullName := fullName;
      This.all.Flag_fullName := True;
   end setFullName;
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
   procedure setHelp(This: access Parameter; enable: Boolean) is
   begin
      This.all.Flag_help := enable;
   end setHelp;
   procedure setRename(This: access Parameter; enable: Boolean) is
   begin
      This.all.rename := enable;
      This.all.Flag_rename := True;
   end setRename;
   procedure setDebug(This: access Parameter; enable: Boolean) is
   begin
      This.all.debug := enable;
      This.all.Flag_debug := True;
   end setDebug;

   -- Werte abfragen
   function getPath(This: access Parameter) return String is
   begin
      return Ada.Strings.Unbounded.To_String(This.all.path);
   end getPath;
   function getPathRecursion(This: access Parameter) return Boolean is
   begin
      return This.all.pathRecursion;
   end getPathRecursion;
   function getFilePattern(This: access Parameter) return String is
   begin
      return Ada.Strings.Unbounded.To_String(This.all.filePattern);
   end getFilePattern;
   function getFileExtensionPattern(This: access Parameter) return String is
   begin
      return Ada.Strings.Unbounded.To_String(This.all.fileExtensionPattern);
   end getFileExtensionPattern;
   function getFullName(This: access Parameter) return Boolean is
   begin
      return This.all.fullName;
   end getFullName;
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
   function getHelp(This: access Parameter) return String is
   begin
      return Globals.help_string;
   end getHelp;
   function getRename(This: access Parameter) return Boolean is
   begin
      return This.all.rename;
   end getRename;
   function getDebug(This: access Parameter) return Boolean is
   begin
      return This.all.debug;
   end getDebug;

   -- Flags abfragen
   function flagPath(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_path;
   end flagPath;
   function flagPathRecursion(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_pathRecursion;
   end flagPathRecursion;
   function flagFilePattern(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_filePattern;
   end flagFilePattern;
   function flagFileExtensionPattern(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_fileExtensionPattern;
   end flagFileExtensionPattern;
   function flagFullName(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_fullName;
   end flagFullName;
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
   function flagHelp(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_help;
   end flagHelp;
   function flagRename(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_rename;
   end flagRename;
   function flagDebug(This: access Parameter) return Boolean is
   begin
      return This.all.Flag_debug;
   end flagDebug;

end Parameters;
