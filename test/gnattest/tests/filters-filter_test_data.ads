--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.


with AUnit.Test_Fixtures;

with GNATtest_Generated;

generic
   type GNATtest_Test_Type is new AUnit.Test_Fixtures.Test_Fixture
     with private;
package Filters.Filter_Test_Data is

   type Filter_Access is access all GNATtest_Generated.GNATtest_Standard.Filters.Filter'Class;

--  begin read only
   type Test_Filter is abstract new AUnit.Test_Fixtures.Test_Fixture
--  end read only
   with record
      Fixture : Filter_Access;
   end record;

   procedure User_Set_Up (Gnattest_T : in out Test_Filter) is null;
   procedure User_Tear_Down (Gnattest_T : in out Test_Filter) is null;

end Filters.Filter_Test_Data;