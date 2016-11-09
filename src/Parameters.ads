-- Verwendete Packages
with Globals;
with Ada.Strings.Unbounded;

-- Package für Parameter
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

   -- Werte abfragen
   function getPath(This: access Parameter) return String;
   function getDatePattern(This: access Parameter) return String;
   function getMinFileSize(This: access Parameter) return Natural;
   function getMaxFileSize(This: access Parameter) return Natural;

private
   -- Objektvariablen
   type Parameter is tagged
      record
         path: Ada.Strings.Unbounded.Unbounded_String;
         datePattern: String(1..10) := Globals.defaultDate;
         minFileSize: Natural := Globals.minFileSize;
         maxFileSize: Natural := Globals.maxFileSize;
      end record;

end Parameters;
