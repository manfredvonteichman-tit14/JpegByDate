-- Verwendete Packages
with Ada.Unchecked_Deallocation;

-- Package für das Auflisten von Dateien
package body FilesystemListers is

   -- Konstruktor
   function create(params: access Parameters.Parameter; filter: access FileFilters.Filter'Class) return access FilesystemLister is
   begin
      return create(params, params.getPath, filter);
   end create;
   function create(params: access Parameters.Parameter; path: String; filter: access FileFilters.Filter'Class) return access FilesystemLister is
      lister: access FilesystemLister := new FilesystemLister;
   begin
      lister.all.params := params;
      lister.init(path, filter);
      return lister;
   end create;

   -- Destruktor
   procedure destroy(This: access FilesystemLister) is
      type type_access is access all FilesystemLister;
      procedure Free is new Ada.Unchecked_Deallocation(FilesystemLister, type_access);
      obj: type_access := type_access(This);
   begin
      -- interne Variablen löschen
      if This.all.subLister /= null then
         This.all.subLister.destroy;
      end if;

      -- Suche beenden
      Ada.Directories.End_Search(Search => This.all.FilesystemSearch);

      -- externe Variablen nicht löschen
      Free(obj);
   end;

   -- Auflisten der Dateien im Suchort
   function hasNext(This: access FilesystemLister) return Boolean is
   begin
      return This.all.hasNextMatch;
   end hasNext;

   -- Getterfunktionen
   function next(This: access FilesystemLister) return String is
      next_str: Ada.Strings.Unbounded.Unbounded_String;
   begin
      if This.all.hasNextMatch = True then
         -- Wenn es ein weiteres Element gibt, dieses zurück geben
         next_str := This.all.nextMatch;
         This.parseNext;
         return Ada.Strings.Unbounded.To_String(next_str);
      else
         -- Wenn kein Element mehr vorhanden ist nichts zurück geben
         return "";
      end if;
   end next;

   -- Initialisierungsfunktion
   procedure init(This: access FilesystemLister; path: String; filter: access FileFilters.Filter'Class) is
      dFilter: Ada.Directories.Filter_Type;
   begin
      -- Filter anlegen
      if This.all.params.getPathRecursion = True then
         dFilter := (Ada.Directories.Ordinary_File => True, Ada.Directories.Special_File => False, Ada.Directories.Directory => True);
      else
         dFilter := (Ada.Directories.Ordinary_File => True, Ada.Directories.Special_File => False, Ada.Directories.Directory => False);
      end if;

      -- Verzeichnis Durchsuchen initialisieren
      Ada.Directories.Start_Search(Search => This.all.FilesystemSearch, Directory => path, Pattern => "", Filter => dFilter);
      This.all.filter := filter;
      This.parseNext;

   -- Fehlerbehandlung
   exception
      -- Fehler bei Verzeichnisname
      when E: Ada.Directories.Name_Error =>
         This.all.nextMatch := Ada.Strings.Unbounded.Null_Unbounded_String;
         This.all.hasNextMatch := False;

      -- Fehler bei Verwendung des Verzeichnisses (Berechtigungen)
      when E: Ada.Directories.Use_Error =>
         This.all.nextMatch := Ada.Strings.Unbounded.Null_Unbounded_String;
         This.all.hasNextMatch := False;

      -- Alle anderen Fehler
      when E: others =>
         This.all.nextMatch := Ada.Strings.Unbounded.Null_Unbounded_String;
         This.all.hasNextMatch := False;
   end init;

   -- Intene Suche nach nächster Datei
   procedure parseNext(This: access FilesystemLister) is
      EntryItem: Ada.Directories.Directory_Entry_Type;
   begin
      -- Nur durchführen, wenn beim letzten mal noch Matches gefunden wurden
      if This.all.hasNextMatch = True then
         -- Zunächst Unterverzeichnisse abfragen
         if This.all.subLister /= null then
            -- Aktuelle Verarbeitung im Unterverzeichnis
            if This.all.subLister.hasNext = True then
               -- Eintrag aus Unterverzeeichnis kopieren
               This.all.nextMatch := Ada.Strings.Unbounded.To_Unbounded_String(This.all.subLister.next);
               This.all.hasNextMatch := True;
               return; -- Abbrechen bei neuem Match aus Unterverzeichnis
            else
               -- Unterverzeichnis ist fertig
               This.all.subLister.destroy;
               This.all.subLister := null;
            end if;
         end if;

         -- Directory durchsuchen
         while Ada.Directories.More_Entries(Search => This.all.FilesystemSearch) loop
            -- Nächsten Eintrag auslesen
            Ada.Directories.Get_Next_Entry(Search => This.all.FilesystemSearch, Directory_Entry => EntryItem);

            -- Typ überprüfen
            declare
               -- Notwendig für Vergleich von Ada.Directories.File_Kind
               use type Ada.Directories.File_Kind;
            begin
               if Ada.Directories.Kind(EntryItem) = Ada.Directories.Directory then
                  -- Spezialverzeichnisse überprüfen
                  if Ada.Directories.Simple_Name(EntryItem) /= "." and Ada.Directories.Simple_Name(EntryItem) /= ".." then
                     -- Unterverzeichnis anlegen
                     This.all.subLister := create(This.all.params, Ada.Directories.Full_Name(EntryItem), This.all.filter);

                     -- Unterverzeichnis durchsuchen
                     if This.all.subLister.hasNext = True then
                        -- Eintrag aus Unterverzeeichnis kopieren
                        This.all.nextMatch := Ada.Strings.Unbounded.To_Unbounded_String(This.all.subLister.next);
                        This.all.hasNextMatch := True;
                        return; -- Abbrechen bei neuem Match aus Unterverzeichnis
                     else
                        -- War wohl nix -> Unterverzeichnis enthält keine gesuchten Dateien
                        This.all.subLister.destroy;
                        This.all.subLister := null;
                     end if;
                  end if;
               else
                  -- Filtern des Eintrages nach Dateigröße und mit einer Regular-Expression
                  if This.all.filter.apply(Ada.Directories.Full_Name(EntryItem)) then -- Non dispatching Call auf Filter -> Es wird zwangsläufig die Methode der abstrakten Klasse aufgerufen
                     -- Wenn Filter korrekt -> in Liste aufnehmen
                     This.all.nextMatch := Ada.Strings.Unbounded.To_Unbounded_String(Ada.Directories.Full_Name(EntryItem));
                     This.all.hasNextMatch := True;
                     return; -- Abbrechen bei nächstem Match
                  end if;
               end if;

            end;
         end loop;

         -- Keinen weiteren Eintrag gefunden
         This.all.nextMatch := Ada.Strings.Unbounded.Null_Unbounded_String;
         This.all.hasNextMatch := False;
      end if;

   -- Fehlerbehandlung -> weitere Suche abbrechen
   exception
      -- Fehler bei Abfrage weiterer Verzeichniseinträge
      when E: Ada.Directories.Status_Error =>
         This.all.nextMatch := Ada.Strings.Unbounded.Null_Unbounded_String;
         This.all.hasNextMatch := False;

      -- Fehler bei Verzeichnisname
      when E: Ada.Directories.Name_Error =>
         This.all.nextMatch := Ada.Strings.Unbounded.Null_Unbounded_String;
         This.all.hasNextMatch := False;

      -- Fehler bei Verwendung des Verzeichnisses (Berechtigungen)
      when E: Ada.Directories.Use_Error =>
         This.all.nextMatch := Ada.Strings.Unbounded.Null_Unbounded_String;
         This.all.hasNextMatch := False;

      -- Alle anderen Fehler
      when E: others =>
         This.all.nextMatch := Ada.Strings.Unbounded.Null_Unbounded_String;
         This.all.hasNextMatch := False;
   end parseNext;

end FilesystemListers;
