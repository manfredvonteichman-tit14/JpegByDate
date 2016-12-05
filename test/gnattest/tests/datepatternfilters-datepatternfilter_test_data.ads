--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.


with AUnit.Test_Fixtures;

with GNATtest_Generated;

package DatePatternFilters.DatePatternFilter_Test_Data is

   type DatePatternFilter_Access is access all GNATtest_Generated.GNATtest_Standard.DatePatternFilters.DatePatternFilter'Class;

--  begin read only
   type Test_DatePatternFilter is new AUnit.Test_Fixtures.Test_Fixture
--  end read only
   with record
      Fixture : DatePatternFilter_Access;
   end record;

   procedure Set_Up (Gnattest_T : in out Test_DatePatternFilter);
   procedure Tear_Down (Gnattest_T : in out Test_DatePatternFilter);

end DatePatternFilters.DatePatternFilter_Test_Data;