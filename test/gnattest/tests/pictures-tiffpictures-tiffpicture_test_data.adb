--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body Pictures.TiffPictures.TiffPicture_Test_Data is

   Local_TiffPicture : aliased GNATtest_Generated.GNATtest_Standard.Pictures.TiffPictures.TiffPicture;
   procedure Set_Up (Gnattest_T : in out Test_TiffPicture) is
   begin
     GNATtest_Generated.GNATtest_Standard.Pictures.Picture_Test_Data.Picture_Tests.Test_Picture(Gnattest_T).Set_Up;
      Gnattest_T.Fixture := Local_TiffPicture'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_TiffPicture) is
   begin
     GNATtest_Generated.GNATtest_Standard.Pictures.Picture_Test_Data.Picture_Tests.Test_Picture(Gnattest_T).Tear_Down;
   end Tear_Down;

end Pictures.TiffPictures.TiffPicture_Test_Data;