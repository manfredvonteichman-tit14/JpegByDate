--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Pictures.TiffPictures.TiffPicture_Test_Data.TiffPicture_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Pictures.TiffPictures.TiffPicture_Test_Data.TiffPicture_Tests.Test_TiffPicture);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_create_e815d4 : aliased Runner_1.Test_Case;
   Case_2_1_Test_destroy_2c7da1 : aliased Runner_1.Test_Case;
   Case_3_1_Test_hasEXIF_23b1b2 : aliased Runner_1.Test_Case;
   Case_4_1_Test_getEXIF_89cc60 : aliased Runner_1.Test_Case;
   Case_5_1_Test_createInt_79ab5b : aliased Runner_1.Test_Case;
   Case_6_1_Test_createInt_b1f231 : aliased Runner_1.Test_Case;
   Case_7_1_Test_readBinary_c46aec : aliased Runner_1.Test_Case;
   Case_1i_1_Test_setName_902706 : aliased Runner_1.Test_Case;
   Case_2i_1_Test_getName_fd9b4a : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_create_e815d4,
         "pictures-tiffpictures.ads:12:4:",
         Test_create_e815d4'Access);
      Runner_1.Create
        (Case_2_1_Test_destroy_2c7da1,
         "pictures-tiffpictures.ads:14:4:",
         Test_destroy_2c7da1'Access);
      Runner_1.Create
        (Case_3_1_Test_hasEXIF_23b1b2,
         "pictures-tiffpictures.ads:17:4:",
         Test_hasEXIF_23b1b2'Access);
      Runner_1.Create
        (Case_4_1_Test_getEXIF_89cc60,
         "pictures-tiffpictures.ads:18:4:",
         Test_getEXIF_89cc60'Access);
      Runner_1.Create
        (Case_5_1_Test_createInt_79ab5b,
         "pictures-tiffpictures.ads:21:4:",
         Test_createInt_79ab5b'Access);
      Runner_1.Create
        (Case_6_1_Test_createInt_b1f231,
         "pictures-tiffpictures.ads:22:4:",
         Test_createInt_b1f231'Access);
      Runner_1.Create
        (Case_7_1_Test_readBinary_c46aec,
         "pictures-tiffpictures.ads:23:4:",
         Test_readBinary_c46aec'Access);
      Runner_1.Create
        (Case_1i_1_Test_setName_902706,
         "pictures.ads:17:4: inherited at pictures-tiffpictures.ads:30:4:",
         Test_setName_902706'Access);
      Runner_1.Create
        (Case_2i_1_Test_getName_fd9b4a,
         "pictures.ads:21:4: inherited at pictures-tiffpictures.ads:30:4:",
         Test_getName_fd9b4a'Access);

      Result.Add_Test (Case_1_1_Test_create_e815d4'Access);
      Result.Add_Test (Case_2_1_Test_destroy_2c7da1'Access);
      Result.Add_Test (Case_3_1_Test_hasEXIF_23b1b2'Access);
      Result.Add_Test (Case_4_1_Test_getEXIF_89cc60'Access);
      Result.Add_Test (Case_5_1_Test_createInt_79ab5b'Access);
      Result.Add_Test (Case_6_1_Test_createInt_b1f231'Access);
      Result.Add_Test (Case_7_1_Test_readBinary_c46aec'Access);
      Result.Add_Test (Case_1i_1_Test_setName_902706'Access);
      Result.Add_Test (Case_2i_1_Test_getName_fd9b4a'Access);

      return Result'Access;

   end Suite;

end Pictures.TiffPictures.TiffPicture_Test_Data.TiffPicture_Tests.Suite;
--  end read only
