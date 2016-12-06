-- Verwendete Packages
with EXIFParsers;
with Globals;
with Pictures;
with Ada.Directories;
with Ada.Direct_IO;
with Ada.Exceptions;
with Ada.IO_Exceptions;
with Ada.Numerics.Generic_Elementary_Functions;
with Ada.Strings.Fixed;
with Ada.Strings.Maps;
with Ada.Strings.Unbounded;
with Ada.Unchecked_Deallocation;
with GNAT.Regpat;

-- Package für FileHandler
package body FileHandlers is

   -- Anmeldung privater Funktionen
   function getDisplayName(This: access FileHandler; full_name: String) return String;
   function renamePicture(This: access FileHandler; picture: access Pictures.Picture'Class) return String;
   function createCSV(This: access FileHandler; picture: access Pictures.Picture'Class) return String;
   function readFile(name: String; buffer: out Ada.Strings.Unbounded.Unbounded_String) return Integer;

   -- Konstruktor
   function create(files: access FileListers.FileLister'Class; filter: access EXIFFilters.Filter'Class; params: access Parameters.Parameter) return access FileHandler is
      handler: access FileHandler := new FileHandler;
   begin
      handler.all.files := files;
      handler.all.filter := filter;
      handler.all.params := params;
      return handler;
   end create;

   -- Destruktor
   procedure destroy(This: access FileHandler) is
      type type_access is access all FileHandler;
      procedure Free is new Ada.Unchecked_Deallocation(FileHandler, type_access);
      obj: type_access := type_access(This);
   begin
      -- externe Variablen nicht löschen
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

         -- Dateigröße überprüfen
         if size >= 1 then
            -- Bild ist mindestens ein Byte groß
            declare
            begin
               -- Bild erstellen
               picture := Pictures.create(Ada.Strings.Unbounded.To_String(str), buffer);

               -- Bildnamen und Pfad anzeigen wenn Bedingungen erfüllt werden und EXIF Informationen vorhanden sind
               if picture.hasEXIF then
                  -- EXIF Filter anwenden
                  if This.all.filter.apply(EXIFParsers.EXIFParser_Access(picture.getEXIF)) then
                     -- CSV-Ausgabe?
                     if This.all.params.flagCSV then
                        -- Datei umbenennen?
                        if This.all.params.getRename then
                           -- Bild umbenennen
                           declare
                           begin
                              -- Bild umbenennen
                              declare
                                 unused: String := This.renamePicture(picture);
                                 pragma Unreferenced(unused);
                              begin
                                 null;
                              end;

                           exception
                              -- Fehler beim Umbenennen -> Keine Ausgabe in CSV Datei
                              when E: Ada.IO_Exceptions.Name_Error =>
                                 null;

                              -- Sonstiger Fehler beim Umbenennen -> Keine Ausgabe in CSV Datei
                              when E: others =>
                                 null;
                           end;
                        end if;

                        -- Ausgabe in CSV Datei
                        output.display(This.createCSV(picture));

                     else
                        -- Datei umbenennen?
                        if This.all.params.getRename then
                           -- Alten Namen ausgeben
                           output.display("OLD: " & This.getDisplayName(picture.getName));

                           -- Bild umbenennen
                           declare
                           begin
                              -- Neuen Namen ausgeben
                              output.display("NEW: " & This.getDisplayName(This.renamePicture(picture)));

                           exception
                              -- Fehler beim Umbenennen
                              when E: Ada.IO_Exceptions.Name_Error =>
                                 output.display("UNABLE TO RENAME FILE... skipping.");
                                 output.display(Ada.Exceptions.Exception_Message(E));

                              -- Sonstiger Fehler beim Umbenennen
                              when E: others =>
                                 output.display("UNKNOWN ERROR TRYING TO RENAME FILE... skipping.");
                           end;
                        else
                           -- Nur Name ausgeben
                           output.display(This.getDisplayName(picture.getName));
                        end if;

                        -- Debug Ausgabe
                        if This.all.params.getDebug then
                           declare
                              package Float_Functions is new Ada.Numerics.Generic_Elementary_Functions(Float);
                           begin
                              output.display("DEBUG OUTPUT - DateTimeOriginal: " & picture.getEXIF.getDateTimeOriginal);
                              output.display("DEBUG OUTPUT - ExifImageWidth: " & Integer'Image(picture.getEXIF.getExifImageWidth));
                              output.display("DEBUG OUTPUT - ExifImageHeight: " & Integer'Image(picture.getEXIF.getExifImageHeight));
                              output.display("DEBUG OUTPUT - FocalLength: " & Float'Image(picture.getEXIF.getFocalLength));
                              output.display("DEBUG OUTPUT - ISOSpeedRatings: " & Integer'Image(picture.getEXIF.getISOSpeedRatings));
                              output.display("DEBUG OUTPUT - ShutterSpeedValue raw: " & Float'Image(picture.getEXIF.getShutterSpeedValue) & " | computed: " & Float'Image(1.0 / (Float_Functions."**"(2.0, picture.getEXIF.getShutterSpeedValue))));
                              output.display("DEBUG OUTPUT - ApertureValue: " & Float'Image(picture.getEXIF.getApertureValue) & " | computed: F/" & Float'Image((Float_Functions."**"(1.4142135623730, picture.getEXIF.getApertureValue))));
                              output.display("DEBUG OUTPUT - Flash: " & Integer'Image(picture.getEXIF.getFlash));
                           exception
                              when E: EXIFParsers.TagNotFound =>
                                 output.display("DEBUG OUTPUT - EXCEPTION IN EXIF");
                           end;
                        end if;
                     end if;

                  end if;
               else
                  -- Keine EXIF Informationen in Bild vorhanden
                  -- KEINE AUSGABE in diesem Fall
                  -- Nur Forderung nach Anzeige der Bildernamen mit entsprechenden EXIF Informationen
                  null;
               end if;

            exception
               -- Bei Problemen mit der Bilderstellung oder Verarbeitung
               -- KEINE FEHLERAUSGABE bei kaputtem Bild
               -- Nur Forderung nach Anzeige der Bildernamen mit entsprechenden EXIF Informationen

               -- Datei besitzt unbekanntes Format
               when E: Pictures.Unknown_Format =>
                  null;

               -- Bekanntes Dateiformat enthält Fehler
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

         -- Bild löschen
         if picture /= null then
            picture.destroy;
            picture := null;
         end if;

      end loop;
   end exec;

   -- VOLL PRIVATE FUNKTIONEN

   -- Dateinamen zur Anzeige
   function getDisplayName(This: access FileHandler; full_name: String) return String is
   begin
      if This.all.params.getFullName then
         -- Name mit vollständigem Pfad zurück geben
         return full_name;
      else
         -- Nur Name zurück geben
         declare
            pos: Natural := GNAT.Regpat.Match(Expression => Globals.regexPatternSimpleName, Data => full_name);
         begin
            if pos >= full_name'First then
               return Ada.Strings.Fixed.Replace_Slice(full_name, full_name'First, pos-1, "");
            else
               -- Im Fehlerfall alles ausgeben
               return full_name;
            end if;
         end;
      end if;
   end getDisplayName;

   -- Bild umbenennen
   function renamePicture(This: access FileHandler; picture: access Pictures.Picture'Class) return String is
      new_name: Ada.Strings.Unbounded.Unbounded_String;
   begin
      -- Neuen Namen erstellen und umbenennen
      declare
         old_name: String := picture.getName;
         pos: Natural := GNAT.Regpat.Match(Expression => Globals.regexPatternSimpleName, Data => old_name);
         fileextension: Ada.Strings.Unbounded.Unbounded_String;
         retry: Integer := 0;
      begin
         -- Pfad ausschneiden
         if pos >= old_name'First then
            new_name := Ada.Strings.Unbounded.To_Unbounded_String(Ada.Strings.Fixed.Replace_Slice(old_name, pos, old_name'Last, ""));
         else
            -- Im Fehlerfall
            raise Ada.IO_Exceptions.Name_Error with "Unable to extract file path";
         end if;

         -- Datum auslesen und an Pfad anfügen
         declare
            date: String := Ada.Strings.Fixed.Translate(Ada.Strings.Fixed.Translate(picture.getEXIF.getDateTimeOriginal, Ada.Strings.Maps.To_Mapping(From => ":", To => "-")), Ada.Strings.Maps.To_Mapping(From => " ", To => "-"));
         begin
            Ada.Strings.Unbounded.Append(new_name, date(date'First..date'Last-1));
         end;

         -- Dateiendung auslesen
         pos := GNAT.Regpat.Match(Expression => Globals.regexPatternFileExtension, Data => old_name);
         if pos >= old_name'First then
            fileextension := Ada.Strings.Unbounded.To_Unbounded_String("." & Ada.Strings.Fixed.Replace_Slice(old_name, old_name'First, pos-1, ""));
         else
            -- Im Fehlerfall
            raise Ada.IO_Exceptions.Name_Error with "Unable to extract file extension!";
         end if;

         -- Versuchen Datei umzubenennen
         loop
            declare
               new_name_copy: Ada.Strings.Unbounded.Unbounded_String := new_name;
            begin
               -- Zusatz anfügen?
               if retry /= 0 then
                  Ada.Strings.Unbounded.Append(new_name_copy, "_" & Ada.Strings.Fixed.Trim(Integer'Image(retry), Ada.Strings.Left));
               end if;
               retry := retry + 1;

               -- Dateiendung anfügen
               Ada.Strings.Unbounded.Append(new_name_copy, fileextension);

               -- Datei umbenennen
               picture.setName(Ada.Strings.Unbounded.To_String(new_name_copy));
               Ada.Directories.Rename(old_name, picture.getName);

               -- Erfolgreich abgeschlossen -> Schleife verlassen
               exit;

            -- Fehler behandeln
            exception
               -- Fehler beim Umbenennen (Möglichwerweise existiert neuer Name bereits) -> nochmal versuchen
               when E: Ada.IO_Exceptions.Use_Error =>
                  if retry > Globals.maxRenameRetries then
                     raise;
                  end if;

            end;
         end loop;

      -- Fehler behandeln
      exception
         -- EXIF-Tag existiert nicht
         when E: EXIFParsers.TagNotFound =>
            raise Ada.IO_Exceptions.Name_Error with "Unable to rename picture! No EXIF date available.";

         -- Fehler am Dateinamen
         when E: Ada.IO_Exceptions.Name_Error =>
            raise Ada.IO_Exceptions.Name_Error with "Unable to rename picture! Invalid filename.";

         -- Fehler beim Umbenennen (Möglichwerweise existiert neuer Name bereits)
         when E: Ada.IO_Exceptions.Use_Error =>
            raise Ada.IO_Exceptions.Name_Error with "Unable to rename picture! New filename might already be in use.";

         -- Alle anderen Fehler
         when E: others =>
            raise Ada.IO_Exceptions.Name_Error with "Unknown error renaming picture!";
      end;

      -- Neuen Namen zurückgeben
      return picture.getName;
   end renamePicture;

   -- CSV String parsen
   function createCSV(This: access FileHandler; picture: access Pictures.Picture'Class) return String is
      separator: String := This.all.params.getCSVseparator;
      csv_row: Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("""" & This.getDisplayName(picture.getName) & """" & separator);
   begin
      -- Alle Tags auslesen
      for counter in Integer range 1..8 loop
         declare
         begin
            -- Tag ausgeben
            case counter is
               when 1 =>
                  Ada.Strings.Unbounded.Append(csv_row, Ada.Strings.Fixed.Trim(Integer'Image(picture.getEXIF.getISOSpeedRatings) & separator, Ada.Strings.Left));
               when 2 =>
                  declare
                     date: String := picture.getEXIF.getDateTimeOriginal;
                  begin
                     Ada.Strings.Unbounded.Append(csv_row, Ada.Strings.Fixed.Replace_Slice(date, date'Last, date'Last, "") & separator);
                  end;
               when 3 =>
                  Ada.Strings.Unbounded.Append(csv_row, Ada.Strings.Fixed.Trim(Float'Image(picture.getEXIF.getShutterSpeedValue) & separator, Ada.Strings.Left));
               when 4 =>
                  Ada.Strings.Unbounded.Append(csv_row, Ada.Strings.Fixed.Trim(Float'Image(picture.getEXIF.getApertureValue) & separator, Ada.Strings.Left));
               when 5 =>
                  Ada.Strings.Unbounded.Append(csv_row, Ada.Strings.Fixed.Trim(Integer'Image(picture.getEXIF.getFlash) & separator, Ada.Strings.Left));
               when 6 =>
                  Ada.Strings.Unbounded.Append(csv_row, Ada.Strings.Fixed.Trim(Float'Image(picture.getEXIF.getFocalLength) & separator, Ada.Strings.Left));
               when 7 =>
                  Ada.Strings.Unbounded.Append(csv_row, Ada.Strings.Fixed.Trim(Integer'Image(picture.getEXIF.getExifImageWidth) & separator, Ada.Strings.Left));
               when 8 =>
                  Ada.Strings.Unbounded.Append(csv_row, Ada.Strings.Fixed.Trim(Integer'Image(picture.getEXIF.getExifImageHeight), Ada.Strings.Left));
               when others =>
                  null; -- Keine Ausgabe im Overflow Fall
            end case;

         -- Fehlerbehandlung
         exception
            -- Bei nicht vorhandenem Tag Zelle leer lassen
            when E: EXIFParsers.TagNotFound =>
               if counter /= 8 then
                  Ada.Strings.Unbounded.Append(csv_row, separator);
               end if;

            -- Bei sonstigen Fehlern Zelle leer lassen
            when E: others =>
               if counter /= 8 then
                  Ada.Strings.Unbounded.Append(csv_row, separator);
               end if;
         end;
      end loop;

      -- CSV String zurück geben
      return Ada.Strings.Unbounded.To_String(csv_row);
   end createCSV;

   -- Datei einlesen
   -- Rückgabe -1 bei fehlender oder leerer Datei
   function readFile(name: String; buffer: out Ada.Strings.Unbounded.Unbounded_String) return Integer is
   begin
      declare
         -- Dateigröße auslesen und Einlesen vorbereiten
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
         buffer := Ada.Strings.Unbounded.To_Unbounded_String(buf);
         return Integer(size);
      end;

   -- Fehlerbehandlung -> im Fehlerfall Dateigröße -1 zurückgeben
   exception
      -- Fehler bei Abfrage weiterer Verzeichniseinträge
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
