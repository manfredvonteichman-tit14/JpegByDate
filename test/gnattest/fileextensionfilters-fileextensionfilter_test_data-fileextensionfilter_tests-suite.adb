--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body FileExtensionFilters.FileExtensionFilter_Test_Data.FileExtensionFilter_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.FileExtensionFilters.FileExtensionFilter_Test_Data.FileExtensionFilter_Tests.Test_FileExtensionFilter);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_create_a689c9 : aliased Runner_1.Test_Case;
   Case_2_1_Test_destroy_c63404 : aliased Runner_1.Test_Case;
   Case_3_1_Test_applyThis_13a7c7 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_create_a689c9,
         "fileextensionfilters.ads:12:4:",
         Test_create_a689c9'Access);
      Runner_1.Create
        (Case_2_1_Test_destroy_c63404,
         "fileextensionfilters.ads:14:4:",
         Test_destroy_c63404'Access);
      Runner_1.Create
        (Case_3_1_Test_applyThis_13a7c7,
         "fileextensionfilters.ads:17:4:",
         Test_applyThis_13a7c7'Access);

      Result.Add_Test (Case_1_1_Test_create_a689c9'Access);
      Result.Add_Test (Case_2_1_Test_destroy_c63404'Access);
      Result.Add_Test (Case_3_1_Test_applyThis_13a7c7'Access);

      return Result'Access;

   end Suite;

end FileExtensionFilters.FileExtensionFilter_Test_Data.FileExtensionFilter_Tests.Suite;
--  end read only
