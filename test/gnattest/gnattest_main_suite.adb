--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with CommandlineParsers.CommandlineParser_Test_Data.CommandlineParser_Tests.Suite;
with Parameters.Parameter_Test_Data.Parameter_Tests.Suite;
with ConsoleOutputs.ConsoleOutput_Test_Data.ConsoleOutput_Tests.Suite;
with DatePatternFilters.DatePatternFilter_Test_Data.DatePatternFilter_Tests.Suite;
with EXIFParsers.EXIFParser_Test_Data.EXIFParser_Tests.Suite;
with DateRangeFilters.DateRangeFilter_Test_Data.DateRangeFilter_Tests.Suite;
with FileExtensionFilters.FileExtensionFilter_Test_Data.FileExtensionFilter_Tests.Suite;
with FileHandlers.FileHandler_Test_Data.FileHandler_Tests.Suite;
with FileNameFilters.FileNameFilter_Test_Data.FileNameFilter_Tests.Suite;
with FileSizeFilters.FileSizeFilter_Test_Data.FileSizeFilter_Tests.Suite;
with FilesystemListers.FilesystemLister_Test_Data.FilesystemLister_Tests.Suite;
with ImageSizeFilters.ImageSizeFilter_Test_Data.ImageSizeFilter_Tests.Suite;
with Pictures.JpegPictures.JpegPicture_Test_Data.JpegPicture_Tests.Suite;
with Pictures.JpegPictures.Test_Data.Tests.Suite;
with Pictures.Test_Data.Tests.Suite;
with Pictures.TiffPictures.Test_Data.Tests.Suite;
with Pictures.TiffPictures.TiffPicture_Test_Data.TiffPicture_Tests.Suite;
with TimePatternFilters.TimePatternFilter_Test_Data.TimePatternFilter_Tests.Suite;
with TimeRangeFilters.TimeRangeFilter_Test_Data.TimeRangeFilter_Tests.Suite;

package body Gnattest_Main_Suite is

   Result : aliased AUnit.Test_Suites.Test_Suite;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Result.Add_Test (CommandlineParsers.CommandlineParser_Test_Data.CommandlineParser_Tests.Suite.Suite);
      Result.Add_Test (Parameters.Parameter_Test_Data.Parameter_Tests.Suite.Suite);
      Result.Add_Test (ConsoleOutputs.ConsoleOutput_Test_Data.ConsoleOutput_Tests.Suite.Suite);
      Result.Add_Test (DatePatternFilters.DatePatternFilter_Test_Data.DatePatternFilter_Tests.Suite.Suite);
      Result.Add_Test (EXIFParsers.EXIFParser_Test_Data.EXIFParser_Tests.Suite.Suite);
      Result.Add_Test (DateRangeFilters.DateRangeFilter_Test_Data.DateRangeFilter_Tests.Suite.Suite);
      Result.Add_Test (FileExtensionFilters.FileExtensionFilter_Test_Data.FileExtensionFilter_Tests.Suite.Suite);
      Result.Add_Test (FileHandlers.FileHandler_Test_Data.FileHandler_Tests.Suite.Suite);
      Result.Add_Test (FileNameFilters.FileNameFilter_Test_Data.FileNameFilter_Tests.Suite.Suite);
      Result.Add_Test (FileSizeFilters.FileSizeFilter_Test_Data.FileSizeFilter_Tests.Suite.Suite);
      Result.Add_Test (FilesystemListers.FilesystemLister_Test_Data.FilesystemLister_Tests.Suite.Suite);
      Result.Add_Test (ImageSizeFilters.ImageSizeFilter_Test_Data.ImageSizeFilter_Tests.Suite.Suite);
      Result.Add_Test (Pictures.JpegPictures.JpegPicture_Test_Data.JpegPicture_Tests.Suite.Suite);
      Result.Add_Test (Pictures.JpegPictures.Test_Data.Tests.Suite.Suite);
      Result.Add_Test (Pictures.Test_Data.Tests.Suite.Suite);
      Result.Add_Test (Pictures.TiffPictures.Test_Data.Tests.Suite.Suite);
      Result.Add_Test (Pictures.TiffPictures.TiffPicture_Test_Data.TiffPicture_Tests.Suite.Suite);
      Result.Add_Test (TimePatternFilters.TimePatternFilter_Test_Data.TimePatternFilter_Tests.Suite.Suite);
      Result.Add_Test (TimeRangeFilters.TimeRangeFilter_Test_Data.TimeRangeFilter_Tests.Suite.Suite);

      return Result'Access;

   end Suite;

end Gnattest_Main_Suite;
--  end read only
