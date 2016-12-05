--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.


with AUnit.Test_Fixtures;

with GNATtest_Generated;

package Parameters.Parameter_Test_Data is

   type Parameter_Access is access all GNATtest_Generated.GNATtest_Standard.Parameters.Parameter'Class;

--  begin read only
   type Test_Parameter is new AUnit.Test_Fixtures.Test_Fixture
--  end read only
   with record
      Fixture : Parameter_Access;
   end record;

   procedure Set_Up (Gnattest_T : in out Test_Parameter);
   procedure Tear_Down (Gnattest_T : in out Test_Parameter);

end Parameters.Parameter_Test_Data;