--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body FileExtensionFilters.FileExtensionFilter_Test_Data is

   Local_FileExtensionFilter : aliased GNATtest_Generated.GNATtest_Standard.FileExtensionFilters.FileExtensionFilter;
   procedure Set_Up (Gnattest_T : in out Test_FileExtensionFilter) is
   begin
      Gnattest_T.Fixture := Local_FileExtensionFilter'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_FileExtensionFilter) is
   begin
      null;
   end Tear_Down;

end FileExtensionFilters.FileExtensionFilter_Test_Data;