-- Verwendete Packages
with EXIFParsers;
with Filters;

-- Filter Spezialisierung f�r FileFilter
package EXIFFilters is new Filters(EXIFParsers.EXIFParser_Access);
