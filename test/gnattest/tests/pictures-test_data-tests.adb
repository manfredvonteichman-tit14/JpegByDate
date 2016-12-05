--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Pictures.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

package body Pictures.Test_Data.Tests is


--  begin read only
   procedure Test_create (Gnattest_T : in out Test);
   procedure Test_create_25daa5 (Gnattest_T : in out Test) renames Test_create;
--  id:2.2/25daa5a2237d7b8c/create/1/0/
   procedure Test_create (Gnattest_T : in out Test) is
   --  pictures.ads:12:4:create
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_create;
--  end read only

end Pictures.Test_Data.Tests;