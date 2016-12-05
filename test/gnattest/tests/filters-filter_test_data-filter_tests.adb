--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Filters.Filter_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

package body Filters.Filter_Test_Data.Filter_Tests is


--  begin read only
   procedure Test_apply (Gnattest_T : in out Test_Filter);
   procedure Test_apply_958b6e (Gnattest_T : in out Test_Filter) renames Test_apply;
--  id:2.2/958b6e661a7d8a7b/apply/1/0/
   procedure Test_apply (Gnattest_T : in out Test_Filter) is
   --  filters.ads:18:4:apply
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_apply;
--  end read only


--  begin read only
   procedure Test_addNew (Gnattest_T : in out Test_Filter);
   procedure Test_addNew_bbd892 (Gnattest_T : in out Test_Filter) renames Test_addNew;
--  id:2.2/bbd8925018325e31/addNew/1/0/
   procedure Test_addNew (Gnattest_T : in out Test_Filter) is
   --  filters.ads:22:4:addNew
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_addNew;
--  end read only


--  begin read only
   procedure Test_getNext (Gnattest_T : in out Test_Filter);
   procedure Test_getNext_17b29c (Gnattest_T : in out Test_Filter) renames Test_getNext;
--  id:2.2/17b29cda549e9f8e/getNext/1/0/
   procedure Test_getNext (Gnattest_T : in out Test_Filter) is
   --  filters.ads:26:4:getNext
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_getNext;
--  end read only

end Filters.Filter_Test_Data.Filter_Tests;