--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

with FileListers.FileLister_Test_Data.FileLister_Tests;

with GNATtest_Generated;

package FilesystemListers.FilesystemLister_Test_Data is

--  begin read only
   type Test_FilesystemLister is new
     GNATtest_Generated.GNATtest_Standard.FileListers.FileLister_Test_Data.FileLister_Tests.Test_FileLister
--  end read only
   with null record;

   procedure Set_Up (Gnattest_T : in out Test_FilesystemLister);
   procedure Tear_Down (Gnattest_T : in out Test_FilesystemLister);

end FilesystemListers.FilesystemLister_Test_Data;