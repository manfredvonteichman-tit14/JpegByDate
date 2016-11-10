-- Verwendete Packages
with FileFilters;
with Parameters;

-- FileLister Interface
package FileListers is

   -- Interfacedefinition
   -- ACHTUNG! Ist kein Interface, sondern voll abstrakte Klasse.
   -- Dies ist notwendig, da 'limited' von Interface nicht auf Subklasse vererbt wird.
   -- Subklasse FilesystemLister muss aber 'limited' sein und eine nachtr�gliche Definition dazu ist nicht m�glich.
   type FileLister is abstract tagged limited null record; -- quasi interface

   -- Interfacefunktionen
   function create(params: access Parameters.Parameter; filter: access FileFilters.Filter'Class) return access FileLister is abstract;
   procedure destroy(This: access FileLister) is abstract;
   function hasNext(This: access FileLister) return Boolean is abstract;
   function next(This: access FileLister) return String is abstract;

end FileListers;
