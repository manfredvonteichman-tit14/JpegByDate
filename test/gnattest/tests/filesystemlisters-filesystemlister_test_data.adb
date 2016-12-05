--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body FilesystemListers.FilesystemLister_Test_Data is

   Local_FilesystemLister : aliased GNATtest_Generated.GNATtest_Standard.FilesystemListers.FilesystemLister;
   procedure Set_Up (Gnattest_T : in out Test_FilesystemLister) is
   begin
     GNATtest_Generated.GNATtest_Standard.FileListers.FileLister_Test_Data.FileLister_Tests.Test_FileLister(Gnattest_T).Set_Up;
      Gnattest_T.Fixture := Local_FilesystemLister'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_FilesystemLister) is
   begin
     GNATtest_Generated.GNATtest_Standard.FileListers.FileLister_Test_Data.FileLister_Tests.Test_FileLister(Gnattest_T).Tear_Down;
   end Tear_Down;

end FilesystemListers.FilesystemLister_Test_Data;