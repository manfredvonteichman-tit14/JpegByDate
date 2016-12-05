--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body Pictures.JpegPictures.JpegPicture_Test_Data is

   Local_JpegPicture : aliased GNATtest_Generated.GNATtest_Standard.Pictures.JpegPictures.JpegPicture;
   procedure Set_Up (Gnattest_T : in out Test_JpegPicture) is
   begin
     GNATtest_Generated.GNATtest_Standard.Pictures.Picture_Test_Data.Picture_Tests.Test_Picture(Gnattest_T).Set_Up;
      Gnattest_T.Fixture := Local_JpegPicture'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_JpegPicture) is
   begin
     GNATtest_Generated.GNATtest_Standard.Pictures.Picture_Test_Data.Picture_Tests.Test_Picture(Gnattest_T).Tear_Down;
   end Tear_Down;

end Pictures.JpegPictures.JpegPicture_Test_Data;