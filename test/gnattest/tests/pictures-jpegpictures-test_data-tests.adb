--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Pictures.JpegPictures.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

package body Pictures.JpegPictures.Test_Data.Tests is


--  begin read only
   procedure Test_isJpeg (Gnattest_T : in out Test);
   procedure Test_isJpeg_4751f3 (Gnattest_T : in out Test) renames Test_isJpeg;
--  id:2.2/4751f3eaa37127e6/isJpeg/1/0/
   procedure Test_isJpeg (Gnattest_T : in out Test) is
   --  pictures-jpegpictures.ads:22:4:isJpeg
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_isJpeg;
--  end read only

end Pictures.JpegPictures.Test_Data.Tests;