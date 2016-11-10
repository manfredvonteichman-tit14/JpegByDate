-- Verwendete Packages
with EXIFParsers;
with Filters;

-- Filter Spezialisierung für FileFilter
package EXIFFilters is new Filters(EXIFParsers.EXIFParser_Access);
