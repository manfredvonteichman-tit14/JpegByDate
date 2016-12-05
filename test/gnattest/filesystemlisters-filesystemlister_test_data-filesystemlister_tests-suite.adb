--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body FilesystemListers.FilesystemLister_Test_Data.FilesystemLister_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.FilesystemListers.FilesystemLister_Test_Data.FilesystemLister_Tests.Test_FilesystemLister);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_create_4fc734 : aliased Runner_1.Test_Case;
   Case_2_1_Test_create_53fc67 : aliased Runner_1.Test_Case;
   Case_3_1_Test_destroy_6cd7d0 : aliased Runner_1.Test_Case;
   Case_4_1_Test_hasNext_0b3032 : aliased Runner_1.Test_Case;
   Case_5_1_Test_next_684c2f : aliased Runner_1.Test_Case;
   Case_6_1_Test_init_ba0358 : aliased Runner_1.Test_Case;
   Case_7_1_Test_parseNext_fe1256 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_create_4fc734,
         "filesystemlisters.ads:15:4:",
         Test_create_4fc734'Access);
      Runner_1.Create
        (Case_2_1_Test_create_53fc67,
         "filesystemlisters.ads:16:4:",
         Test_create_53fc67'Access);
      Runner_1.Create
        (Case_3_1_Test_destroy_6cd7d0,
         "filesystemlisters.ads:18:4:",
         Test_destroy_6cd7d0'Access);
      Runner_1.Create
        (Case_4_1_Test_hasNext_0b3032,
         "filesystemlisters.ads:21:4:",
         Test_hasNext_0b3032'Access);
      Runner_1.Create
        (Case_5_1_Test_next_684c2f,
         "filesystemlisters.ads:24:4:",
         Test_next_684c2f'Access);
      Runner_1.Create
        (Case_6_1_Test_init_ba0358,
         "filesystemlisters.ads:44:4:",
         Test_init_ba0358'Access);
      Runner_1.Create
        (Case_7_1_Test_parseNext_fe1256,
         "filesystemlisters.ads:47:4:",
         Test_parseNext_fe1256'Access);

      Result.Add_Test (Case_1_1_Test_create_4fc734'Access);
      Result.Add_Test (Case_2_1_Test_create_53fc67'Access);
      Result.Add_Test (Case_3_1_Test_destroy_6cd7d0'Access);
      Result.Add_Test (Case_4_1_Test_hasNext_0b3032'Access);
      Result.Add_Test (Case_5_1_Test_next_684c2f'Access);
      Result.Add_Test (Case_6_1_Test_init_ba0358'Access);
      Result.Add_Test (Case_7_1_Test_parseNext_fe1256'Access);

      return Result'Access;

   end Suite;

end FilesystemListers.FilesystemLister_Test_Data.FilesystemLister_Tests.Suite;
--  end read only
