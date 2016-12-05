--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body FileHandlers.FileHandler_Test_Data.FileHandler_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.FileHandlers.FileHandler_Test_Data.FileHandler_Tests.Test_FileHandler);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_create_915a1c : aliased Runner_1.Test_Case;
   Case_2_1_Test_destroy_f0dd10 : aliased Runner_1.Test_Case;
   Case_3_1_Test_exec_13d0f2 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_create_915a1c,
         "filehandlers.ads:14:4:",
         Test_create_915a1c'Access);
      Runner_1.Create
        (Case_2_1_Test_destroy_f0dd10,
         "filehandlers.ads:16:4:",
         Test_destroy_f0dd10'Access);
      Runner_1.Create
        (Case_3_1_Test_exec_13d0f2,
         "filehandlers.ads:19:4:",
         Test_exec_13d0f2'Access);

      Result.Add_Test (Case_1_1_Test_create_915a1c'Access);
      Result.Add_Test (Case_2_1_Test_destroy_f0dd10'Access);
      Result.Add_Test (Case_3_1_Test_exec_13d0f2'Access);

      return Result'Access;

   end Suite;

end FileHandlers.FileHandler_Test_Data.FileHandler_Tests.Suite;
--  end read only
