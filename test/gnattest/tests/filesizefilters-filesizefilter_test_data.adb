--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body FileSizeFilters.FileSizeFilter_Test_Data is

   Local_FileSizeFilter : aliased GNATtest_Generated.GNATtest_Standard.FileSizeFilters.FileSizeFilter;
   procedure Set_Up (Gnattest_T : in out Test_FileSizeFilter) is
   begin
      Gnattest_T.Fixture := Local_FileSizeFilter'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_FileSizeFilter) is
   begin
      null;
   end Tear_Down;

end FileSizeFilters.FileSizeFilter_Test_Data;