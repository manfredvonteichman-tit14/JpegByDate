--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body ConsoleOutputs.ConsoleOutput_Test_Data.ConsoleOutput_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.ConsoleOutputs.ConsoleOutput_Test_Data.ConsoleOutput_Tests.Test_ConsoleOutput);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_create_46cb64 : aliased Runner_1.Test_Case;
   Case_2_1_Test_destroy_19a48c : aliased Runner_1.Test_Case;
   Case_3_1_Test_display_9676c4 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_create_46cb64,
         "consoleoutputs.ads:11:4:",
         Test_create_46cb64'Access);
      Runner_1.Create
        (Case_2_1_Test_destroy_19a48c,
         "consoleoutputs.ads:13:4:",
         Test_destroy_19a48c'Access);
      Runner_1.Create
        (Case_3_1_Test_display_9676c4,
         "consoleoutputs.ads:16:4:",
         Test_display_9676c4'Access);

      Result.Add_Test (Case_1_1_Test_create_46cb64'Access);
      Result.Add_Test (Case_2_1_Test_destroy_19a48c'Access);
      Result.Add_Test (Case_3_1_Test_display_9676c4'Access);

      return Result'Access;

   end Suite;

end ConsoleOutputs.ConsoleOutput_Test_Data.ConsoleOutput_Tests.Suite;
--  end read only
