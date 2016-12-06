--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body CSVOutputs.CSVOutput_Test_Data is

   Local_CSVOutput : aliased GNATtest_Generated.GNATtest_Standard.CSVOutputs.CSVOutput;
   procedure Set_Up (Gnattest_T : in out Test_CSVOutput) is
   begin
     GNATtest_Generated.GNATtest_Standard.Outputs.Output_Test_Data.Output_Tests.Test_Output(Gnattest_T).Set_Up;
      Gnattest_T.Fixture := Local_CSVOutput'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_CSVOutput) is
   begin
     GNATtest_Generated.GNATtest_Standard.Outputs.Output_Test_Data.Output_Tests.Test_Output(Gnattest_T).Tear_Down;
   end Tear_Down;

end CSVOutputs.CSVOutput_Test_Data;