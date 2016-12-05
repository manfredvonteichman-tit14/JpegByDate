--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Pictures.Picture_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

package body Pictures.Picture_Test_Data.Picture_Tests is


--  begin read only
   procedure Test_setName (Gnattest_T : in out Test_Picture);
   procedure Test_setName_902706 (Gnattest_T : in out Test_Picture) renames Test_setName;
--  id:2.2/9027062bac0c67df/setName/1/0/
   procedure Test_setName (Gnattest_T : in out Test_Picture) is
   --  pictures.ads:17:4:setName
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_setName;
--  end read only


--  begin read only
   procedure Test_getName (Gnattest_T : in out Test_Picture);
   procedure Test_getName_fd9b4a (Gnattest_T : in out Test_Picture) renames Test_getName;
--  id:2.2/fd9b4a3212f7b331/getName/1/0/
   procedure Test_getName (Gnattest_T : in out Test_Picture) is
   --  pictures.ads:21:4:getName
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_getName;
--  end read only

end Pictures.Picture_Test_Data.Picture_Tests;