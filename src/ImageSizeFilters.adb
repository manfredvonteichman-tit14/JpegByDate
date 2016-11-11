-- Verwendete Packages
with Ada.Unchecked_Deallocation;
with GNAT.Regpat;

-- Package f�r Filtermodul
package body ImageSizeFilters is

   -- Konstruktor
   function create return access ImageSizeFilter is
   begin
      raise Constraint_Error with "Missing Parameters!";
      return null;
   end create;
   function createP(params: access Parameters.Parameter) return access ImageSizeFilter is
      filter: access ImageSizeFilter := new ImageSizeFilter;
   begin
      filter.all.params := params;
      return filter;
   end createP;

   -- Destruktor
   procedure destroy(This: access ImageSizeFilter; destroy_chain: Boolean := False) is
      type type_access is access all ImageSizeFilter;
      procedure Free is new Ada.Unchecked_Deallocation(ImageSizeFilter, type_access);
      obj: type_access := type_access(This);
   begin
      -- externe Variablen in diesem Fall doch l�schen
      if destroy_chain = True and This.getNext /= null then
         This.getNext.destroy(destroy_chain);
      end if;
      Free(obj);
   end;

   -- private Funktionen
   overriding function applyThis(This: access ImageSizeFilter; exif: EXIFParsers.EXIFParser_Access) return Boolean is
      exif_tmp: access EXIFParsers.EXIFParser := exif;
      width: Natural := exif_tmp.getExifImageWidth;
      height: Natural := exif_tmp.getExifImageHeight;
   begin
      -- Seitengr��en vergleichen
      if width >= This.params.getMinWidth and width <= This.params.getMaxWidth and
        height >= This.params.getMinHeight and height <= This.params.getMaxHeight then
         return True;
      else
         return False;
      end if;
   end applyThis;

end ImageSizeFilters;