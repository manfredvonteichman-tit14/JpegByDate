-- Verwendete Packages
with Ada.Directories;
with Ada.Unchecked_Deallocation;

-- Package für Filtermodul
package body FileSizeFilters is

   -- Konstruktor
   function create(params: access Parameters.Parameter) return access FileSizeFilter is
      filter: access FileSizeFilter := new FileSizeFilter;
   begin
      filter.all.params := params;
      return filter;
   end create;

   -- Destruktor
   procedure destroy(This: access FileSizeFilter; destroy_chain: Boolean := False) is
      type type_access is access all FileSizeFilter;
      procedure Free is new Ada.Unchecked_Deallocation(FileSizeFilter, type_access);
      obj: type_access := type_access(This);
   begin
      -- externe Variablen in diesem Fall doch löschen
      if destroy_chain = True and This.getNext /= null then
         This.getNext.destroy(destroy_chain);
      end if;
      Free(obj);
   end;

   -- private Funktionen
   overriding function applyThis(This: access FileSizeFilter; str: String) return Boolean is
      filesize: Natural;
   begin
      -- Shortcut falls Standardwert verwendet wird
      if This.all.params.flagFileSize = False then
         return True;
      end if;

      -- Dateigröße auslesen
      filesize := Natural'Val(Ada.Directories.Size(str));

      -- Filtern des Eintrages nach Dateigröße und mit einer Regular-Expression
      if This.all.params.getMinFileSize <= filesize and This.all.params.getMaxFileSize >= filesize then
         return True;
      else
         return False;
      end if;

   -- Fehler bei Dateilesen
   exception
      -- Fehler bei Dateiname
      when E: Ada.Directories.Name_Error =>
         return False;

      -- Alle anderen Fehler
      when E: others =>
         return False;

   end applyThis;

end FileSizeFilters;
