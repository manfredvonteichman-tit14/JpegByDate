--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body DatePatternFilters.DatePatternFilter_Test_Data is

   Local_DatePatternFilter : aliased GNATtest_Generated.GNATtest_Standard.DatePatternFilters.DatePatternFilter;
   procedure Set_Up (Gnattest_T : in out Test_DatePatternFilter) is
   begin
      Gnattest_T.Fixture := Local_DatePatternFilter'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_DatePatternFilter) is
   begin
      null;
   end Tear_Down;

end DatePatternFilters.DatePatternFilter_Test_Data;