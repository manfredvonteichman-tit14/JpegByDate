-- Verwendete Packages
with EXIFParsers;
with Pictures;
with Ada.Directories;
with Ada.Direct_IO;
with Ada.IO_Exceptions;
with Ada.Strings.Unbounded;
with Ada.Unchecked_Deallocation;

-- Package f�r FileHandler
package body FileHandlers is

   -- Anmeldung privater Funktionen
   function readFile(name: String; buffer: out Ada.Strings.Unbounded.Unbounded_String) return Integer;

   -- Konstruktor
   function create(files: access FileListers.FileLister'Class; filter: access EXIFFilters.Filter'Class) return access FileHandler is
      handler: access FileHandler := new FileHandler;
   begin
      handler.all.files := files;
      handler.all.filter := filter;
      return handler;
   end create;

   -- Destruktor
   procedure destroy(This: access FileHandler) is
      type type_access is access all FileHandler;
      procedure Free is new Ada.Unchecked_Deallocation(FileHandler, type_access);
      obj: type_access := type_access(This);
   begin
      -- externe Variablen nicht l�schen
      Free(obj);
   end;

   -- Dateien verarbeiten
   procedure exec(This: access FileHandler; output: access Outputs.Output'Class) is
      str: Ada.Strings.Unbounded.Unbounded_String;
      buffer: Ada.Strings.Unbounded.Unbounded_String;
      size: Integer;
      picture: access Pictures.Picture'Class := null;
   begin
      -- Ausgabe aller Dateien in der Liste
      while This.all.files.hasNext loop
         -- Datei einlesen
         str := Ada.Strings.Unbounded.To_Unbounded_String(This.all.files.next);
         buffer := Ada.Strings.Unbounded.Null_Unbounded_String;
         size := readFile(Ada.Strings.Unbounded.To_String(str), buffer);

         -- Dateigr��e �berpr�fen
         if size >= 1 then
            -- Bild ist mindestens ein Byte gro�
            declare
            begin
               -- Bild erstellen
               picture := Pictures.create(Ada.Strings.Unbounded.To_String(str), buffer);

               -- Bildnamen und Pfad anzeigen wenn Bedingungen erf�llt werden
               if picture.hasEXIF then
                     -- EXIF Filter anwenden
                     if This.all.filter.apply(EXIFParsers.EXIFParser_Access(picture.getEXIF)) then
                        output.display(picture.getName);
                        output.display("DEBUG OUTPUT - DateTimeOriginal: " & picture.getEXIF.getDateTimeOriginal);
                        output.display("DEBUG OUTPUT - ExifImageWidth: " & Integer'Image(picture.getEXIF.getExifImageWidth));
                        output.display("DEBUG OUTPUT - ExifImageHeight: " & Integer'Image(picture.getEXIF.getExifImageHeight));
                     end if;
               end if;

            exception
               -- Bei Problemen mit der Bilderstellung oder Verarbeitung
               -- KEINE FEHLERAUSGABE bei kaputtem Bild
               -- Nur Forderung nach Anzeige der Bildernamen mit entsprechenden EXIF Informationen

               -- Datei besitzt unbekanntes Format
               when E: Pictures.Unknown_Format =>
                  null;

               -- Bekanntes Dateiformat enth�lt Fehler
               when E: Pictures.Illegal_Format =>
                  null;

               -- Sonstige Fehler
               when E: others =>
                  null;
            end;

         else
            -- Bild ist zu klein oder nicht vorhanden
            -- KEINE FEHLERAUSGABE bei fehlendem oder zu kleinem Bild
            -- Nur Forderung nach Anzeige der Bildernamen mit entsprechenden EXIF Informationen
            null;

         end if;

         -- Bild l�schen
         if picture /= null then
            picture.destroy;
            picture := null;
         end if;

      end loop;
   end exec;

   -- VOLL PRIVATE FUNKTIONEN

   -- Datei einlesen
   -- R�ckgabe -1 bei fehlender oder leerer Datei
   function readFile(name: String; buffer: out Ada.Strings.Unbounded.Unbounded_String) return Integer is
   begin
      declare
         -- Dateigr��e auslesen und Einlesen vorbereiten
         size: Ada.Directories.File_Size := Ada.Directories.Size(name);
         subtype File_String is String(1..Integer(size));
         package File_String_IO is new Ada.Direct_IO(File_String);
         file: File_String_IO.File_Type;
         buf: File_String;
      begin
         -- Datei einlesen
         File_String_IO.open(file, File_String_IO.In_File, name);
         File_String_IO.Read(file, buf);
         File_String_IO.Close(file);
         Ada.Strings.Unbounded.Append(buffer, buf);
         return Integer(size);
      end;

   -- Fehlerbehandlung -> im Fehlerfall Dateigr��e -1 zur�ckgeben
   exception
      -- Fehler bei Abfrage weiterer Verzeichniseintr�ge
      when E: Ada.IO_Exceptions.Status_Error =>
         return -1;

      -- Fehler bei Dateioptionen
      when E: Ada.IO_Exceptions.Mode_Error =>
         return -1;

      -- Fehler bei Verzeichnisname
      when E: Ada.IO_Exceptions.Name_Error => -- entspricht auch Ada.Directories.Name_Error
         return -1;

      -- Fehler bei Verwendung des Verzeichnisses (Berechtigungen)
      when E: Ada.IO_Exceptions.Use_Error =>
         return -1;

      -- Fehler bei Dateisystem IO
      when E: Ada.IO_Exceptions.Device_Error =>
         return -1;

      -- Alle anderen Fehler
      when E: others =>
         return -1;
   end readFile;

end FileHandlers;
