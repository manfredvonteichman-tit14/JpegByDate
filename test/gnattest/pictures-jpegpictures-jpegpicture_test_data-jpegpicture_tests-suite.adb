--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Pictures.JpegPictures.JpegPicture_Test_Data.JpegPicture_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Pictures.JpegPictures.JpegPicture_Test_Data.JpegPicture_Tests.Test_JpegPicture);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_create_e815d4 : aliased Runner_1.Test_Case;
   Case_2_1_Test_destroy_2c7da1 : aliased Runner_1.Test_Case;
   Case_3_1_Test_hasEXIF_23b1b2 : aliased Runner_1.Test_Case;
   Case_4_1_Test_getEXIF_89cc60 : aliased Runner_1.Test_Case;
   Case_1i_1_Test_setName_902706 : aliased Runner_1.Test_Case;
   Case_2i_1_Test_getName_fd9b4a : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_create_e815d4,
         "pictures-jpegpictures.ads:13:4:",
         Test_create_e815d4'Access);
      Runner_1.Create
        (Case_2_1_Test_destroy_2c7da1,
         "pictures-jpegpictures.ads:15:4:",
         Test_destroy_2c7da1'Access);
      Runner_1.Create
        (Case_3_1_Test_hasEXIF_23b1b2,
         "pictures-jpegpictures.ads:18:4:",
         Test_hasEXIF_23b1b2'Access);
      Runner_1.Create
        (Case_4_1_Test_getEXIF_89cc60,
         "pictures-jpegpictures.ads:19:4:",
         Test_getEXIF_89cc60'Access);
      Runner_1.Create
        (Case_1i_1_Test_setName_902706,
         "pictures.ads:17:4: inherited at pictures-jpegpictures.ads:26:4:",
         Test_setName_902706'Access);
      Runner_1.Create
        (Case_2i_1_Test_getName_fd9b4a,
         "pictures.ads:21:4: inherited at pictures-jpegpictures.ads:26:4:",
         Test_getName_fd9b4a'Access);

      Result.Add_Test (Case_1_1_Test_create_e815d4'Access);
      Result.Add_Test (Case_2_1_Test_destroy_2c7da1'Access);
      Result.Add_Test (Case_3_1_Test_hasEXIF_23b1b2'Access);
      Result.Add_Test (Case_4_1_Test_getEXIF_89cc60'Access);
      Result.Add_Test (Case_1i_1_Test_setName_902706'Access);
      Result.Add_Test (Case_2i_1_Test_getName_fd9b4a'Access);

      return Result'Access;

   end Suite;

end Pictures.JpegPictures.JpegPicture_Test_Data.JpegPicture_Tests.Suite;
--  end read only
