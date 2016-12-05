--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.


with AUnit.Test_Fixtures;

with GNATtest_Generated;

package ImageSizeFilters.ImageSizeFilter_Test_Data is

   type ImageSizeFilter_Access is access all GNATtest_Generated.GNATtest_Standard.ImageSizeFilters.ImageSizeFilter'Class;

--  begin read only
   type Test_ImageSizeFilter is new AUnit.Test_Fixtures.Test_Fixture
--  end read only
   with record
      Fixture : ImageSizeFilter_Access;
   end record;

   procedure Set_Up (Gnattest_T : in out Test_ImageSizeFilter);
   procedure Tear_Down (Gnattest_T : in out Test_ImageSizeFilter);

end ImageSizeFilters.ImageSizeFilter_Test_Data;