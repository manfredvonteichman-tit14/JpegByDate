--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body EXIFParsers.EXIFParser_Test_Data.EXIFParser_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.EXIFParsers.EXIFParser_Test_Data.EXIFParser_Tests.Test_EXIFParser);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_create_2268cd : aliased Runner_1.Test_Case;
   Case_2_1_Test_destroy_e0b9d4 : aliased Runner_1.Test_Case;
   Case_3_1_Test_getISOSpeedRatings_43d950 : aliased Runner_1.Test_Case;
   Case_4_1_Test_getDateTimeOriginal_b4ec6d : aliased Runner_1.Test_Case;
   Case_5_1_Test_getShutterSpeedValue_95462d : aliased Runner_1.Test_Case;
   Case_6_1_Test_getApertureValue_6fd5d8 : aliased Runner_1.Test_Case;
   Case_7_1_Test_getFlash_85f837 : aliased Runner_1.Test_Case;
   Case_8_1_Test_getFocalLength_8bf5b9 : aliased Runner_1.Test_Case;
   Case_9_1_Test_getExifImageWidth_df7f0f : aliased Runner_1.Test_Case;
   Case_10_1_Test_getExifImageHeight_9c2b40 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_create_2268cd,
         "exifparsers.ads:12:4:",
         Test_create_2268cd'Access);
      Runner_1.Create
        (Case_2_1_Test_destroy_e0b9d4,
         "exifparsers.ads:14:4:",
         Test_destroy_e0b9d4'Access);
      Runner_1.Create
        (Case_3_1_Test_getISOSpeedRatings_43d950,
         "exifparsers.ads:17:4:",
         Test_getISOSpeedRatings_43d950'Access);
      Runner_1.Create
        (Case_4_1_Test_getDateTimeOriginal_b4ec6d,
         "exifparsers.ads:18:4:",
         Test_getDateTimeOriginal_b4ec6d'Access);
      Runner_1.Create
        (Case_5_1_Test_getShutterSpeedValue_95462d,
         "exifparsers.ads:19:4:",
         Test_getShutterSpeedValue_95462d'Access);
      Runner_1.Create
        (Case_6_1_Test_getApertureValue_6fd5d8,
         "exifparsers.ads:20:4:",
         Test_getApertureValue_6fd5d8'Access);
      Runner_1.Create
        (Case_7_1_Test_getFlash_85f837,
         "exifparsers.ads:21:4:",
         Test_getFlash_85f837'Access);
      Runner_1.Create
        (Case_8_1_Test_getFocalLength_8bf5b9,
         "exifparsers.ads:22:4:",
         Test_getFocalLength_8bf5b9'Access);
      Runner_1.Create
        (Case_9_1_Test_getExifImageWidth_df7f0f,
         "exifparsers.ads:23:4:",
         Test_getExifImageWidth_df7f0f'Access);
      Runner_1.Create
        (Case_10_1_Test_getExifImageHeight_9c2b40,
         "exifparsers.ads:24:4:",
         Test_getExifImageHeight_9c2b40'Access);

      Result.Add_Test (Case_1_1_Test_create_2268cd'Access);
      Result.Add_Test (Case_2_1_Test_destroy_e0b9d4'Access);
      Result.Add_Test (Case_3_1_Test_getISOSpeedRatings_43d950'Access);
      Result.Add_Test (Case_4_1_Test_getDateTimeOriginal_b4ec6d'Access);
      Result.Add_Test (Case_5_1_Test_getShutterSpeedValue_95462d'Access);
      Result.Add_Test (Case_6_1_Test_getApertureValue_6fd5d8'Access);
      Result.Add_Test (Case_7_1_Test_getFlash_85f837'Access);
      Result.Add_Test (Case_8_1_Test_getFocalLength_8bf5b9'Access);
      Result.Add_Test (Case_9_1_Test_getExifImageWidth_df7f0f'Access);
      Result.Add_Test (Case_10_1_Test_getExifImageHeight_9c2b40'Access);

      return Result'Access;

   end Suite;

end EXIFParsers.EXIFParser_Test_Data.EXIFParser_Tests.Suite;
--  end read only
