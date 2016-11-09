-- Verwendete Packages
with Filters;
with FileListers;
with Parameters;
with Ada.Directories;
with Ada.Strings.Unbounded;

-- Package f�r das Auflisten von Dateien
package FilesystemListers is

   -- Typ anlegen
   type FilesystemLister is new FileListers.FileLister with private;

   -- Konstruktor
   overriding function create(params: access Parameters.Parameter; filter: access Filters.Filter'Class) return access FilesystemLister;
   -- Destruktor
   overriding procedure destroy(This: access FilesystemLister);

   -- Auflisten der Dateien im Suchort
   overriding function hasNext(This: access FilesystemLister) return Boolean;

   -- Getterfunktionen
   overriding function next(This: access FilesystemLister) return String;

private
   -- Objektvariablen
   type FilesystemLister is new FileListers.FileLister with
      record
         -- Interne Datenspeicherung
         hasNextMatch: Boolean := True; -- Muss True sein, da sonst init denkt es w�ren bereits alle Eintr�ge durchsucht worden
         nextMatch: Ada.Strings.Unbounded.Unbounded_String;

         -- Vorbereitung der Verzeichnissuche
         FilesystemSearch: Ada.Directories.Search_Type;
         filter: access Filters.Filter := null; -- extern
         minFileSize: Natural;
         maxFileSize: Natural;
      end record;

   -- Initialisierungsfunktion
   procedure init(This: access FilesystemLister; path: String; filter: access Filters.Filter'Class);

   -- Intene Suche nach n�chster Datei
   procedure parseNext(This: access FilesystemLister);

end FilesystemListers;
