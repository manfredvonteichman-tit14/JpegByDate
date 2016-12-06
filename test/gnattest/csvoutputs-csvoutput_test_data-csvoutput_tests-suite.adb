--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body CSVOutputs.CSVOutput_Test_Data.CSVOutput_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.CSVOutputs.CSVOutput_Test_Data.CSVOutput_Tests.Test_CSVOutput);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_create_46cb64 : aliased Runner_1.Test_Case;
   Case_2_1_Test_create_f70831 : aliased Runner_1.Test_Case;
   Case_3_1_Test_destroy_19a48c : aliased Runner_1.Test_Case;
   Case_4_1_Test_display_9676c4 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_create_46cb64,
         "csvoutputs.ads:12:4:",
         Test_create_46cb64'Access);
      Runner_1.Create
        (Case_2_1_Test_create_f70831,
         "csvoutputs.ads:13:4:",
         Test_create_f70831'Access);
      Runner_1.Create
        (Case_3_1_Test_destroy_19a48c,
         "csvoutputs.ads:15:4:",
         Test_destroy_19a48c'Access);
      Runner_1.Create
        (Case_4_1_Test_display_9676c4,
         "csvoutputs.ads:18:4:",
         Test_display_9676c4'Access);

      Result.Add_Test (Case_1_1_Test_create_46cb64'Access);
      Result.Add_Test (Case_2_1_Test_create_f70831'Access);
      Result.Add_Test (Case_3_1_Test_destroy_19a48c'Access);
      Result.Add_Test (Case_4_1_Test_display_9676c4'Access);

      return Result'Access;

   end Suite;

end CSVOutputs.CSVOutput_Test_Data.CSVOutput_Tests.Suite;
--  end read only
