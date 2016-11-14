-- Verwendete Packages
with Ada.Unchecked_Deallocation;
with GNAT.Regpat;

-- Package für Filtermodul
package body ImageSizeFilters is

   -- Konstruktor
   function create(params: access Parameters.Parameter) return access ImageSizeFilter is
      filter: access ImageSizeFilter := new ImageSizeFilter;
   begin
      filter.all.params := params;
      return filter;
   end create;

   -- Destruktor
   procedure destroy(This: access ImageSizeFilter; destroy_chain: Boolean := False) is
      type type_access is access all ImageSizeFilter;
      procedure Free is new Ada.Unchecked_Deallocation(ImageSizeFilter, type_access);
      obj: type_access := type_access(This);
   begin
      -- externe Variablen in diesem Fall doch löschen
      if destroy_chain = True and This.getNext /= null then
         This.getNext.destroy(destroy_chain);
      end if;
      Free(obj);
   end;

   -- private Funktionen
   overriding function applyThis(This: access ImageSizeFilter; exif: EXIFParsers.EXIFParser_Access) return Boolean is
   begin
      -- Shortcut falls Standardwert verwendet wird
      if This.all.params.flagImageSize = False then
         return True;
      end if;

      -- Eigentlicher Filter
      declare
         exif_tmp: access EXIFParsers.EXIFParser := exif;
         width: Natural := exif_tmp.getExifImageWidth;
         height: Natural := exif_tmp.getExifImageHeight;
      begin
         -- Seitengrößen vergleichen
         if width >= This.params.getMinWidth and width <= This.params.getMaxWidth and
           height >= This.params.getMinHeight and height <= This.params.getMaxHeight then
            return True;
         else
            return False;
         end if;

      -- Fehler behandeln
      exception
         -- EXIF-Tag existiert nicht
         when E: EXIFParsers.TagNotFound =>
            return False;

         -- Alle anderen Fehler
         when E: others =>
            return False;
      end;
   end applyThis;

end ImageSizeFilters;
