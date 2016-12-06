--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

with Outputs.Output_Test_Data.Output_Tests;

with GNATtest_Generated;

package CSVOutputs.CSVOutput_Test_Data is

--  begin read only
   type Test_CSVOutput is new
     GNATtest_Generated.GNATtest_Standard.Outputs.Output_Test_Data.Output_Tests.Test_Output
--  end read only
   with null record;

   procedure Set_Up (Gnattest_T : in out Test_CSVOutput);
   procedure Tear_Down (Gnattest_T : in out Test_CSVOutput);

end CSVOutputs.CSVOutput_Test_Data;