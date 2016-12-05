--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

with Pictures.Picture_Test_Data.Picture_Tests;

with GNATtest_Generated;

package Pictures.JpegPictures.JpegPicture_Test_Data is

--  begin read only
   type Test_JpegPicture is new
     GNATtest_Generated.GNATtest_Standard.Pictures.Picture_Test_Data.Picture_Tests.Test_Picture
--  end read only
   with null record;

   procedure Set_Up (Gnattest_T : in out Test_JpegPicture);
   procedure Tear_Down (Gnattest_T : in out Test_JpegPicture);

end Pictures.JpegPictures.JpegPicture_Test_Data;