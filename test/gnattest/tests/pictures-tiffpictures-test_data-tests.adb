--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Pictures.TiffPictures.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

package body Pictures.TiffPictures.Test_Data.Tests is


--  begin read only
   procedure Test_isTiff (Gnattest_T : in out Test);
   procedure Test_isTiff_57f0ba (Gnattest_T : in out Test) renames Test_isTiff;
--  id:2.2/57f0ba0d7d6e02a7/isTiff/1/0/
   procedure Test_isTiff (Gnattest_T : in out Test) is
   --  pictures-tiffpictures.ads:26:4:isTiff
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_isTiff;
--  end read only

end Pictures.TiffPictures.Test_Data.Tests;