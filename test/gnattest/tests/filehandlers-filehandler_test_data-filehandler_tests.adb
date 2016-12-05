--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into FileHandlers.FileHandler_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

package body FileHandlers.FileHandler_Test_Data.FileHandler_Tests is


--  begin read only
   procedure Test_create (Gnattest_T : in out Test_FileHandler);
   procedure Test_create_915a1c (Gnattest_T : in out Test_FileHandler) renames Test_create;
--  id:2.2/915a1cf8ab7155ac/create/1/0/
   procedure Test_create (Gnattest_T : in out Test_FileHandler) is
   --  filehandlers.ads:14:4:create
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_create;
--  end read only


--  begin read only
   procedure Test_destroy (Gnattest_T : in out Test_FileHandler);
   procedure Test_destroy_f0dd10 (Gnattest_T : in out Test_FileHandler) renames Test_destroy;
--  id:2.2/f0dd1097cadfe669/destroy/1/0/
   procedure Test_destroy (Gnattest_T : in out Test_FileHandler) is
   --  filehandlers.ads:16:4:destroy
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_destroy;
--  end read only


--  begin read only
   procedure Test_exec (Gnattest_T : in out Test_FileHandler);
   procedure Test_exec_13d0f2 (Gnattest_T : in out Test_FileHandler) renames Test_exec;
--  id:2.2/13d0f2d37e07df77/exec/1/0/
   procedure Test_exec (Gnattest_T : in out Test_FileHandler) is
   --  filehandlers.ads:19:4:exec
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_exec;
--  end read only

end FileHandlers.FileHandler_Test_Data.FileHandler_Tests;