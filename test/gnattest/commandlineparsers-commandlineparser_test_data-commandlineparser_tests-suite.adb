--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body CommandlineParsers.CommandlineParser_Test_Data.CommandlineParser_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.CommandlineParsers.CommandlineParser_Test_Data.CommandlineParser_Tests.Test_CommandlineParser);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_create_8ce989 : aliased Runner_1.Test_Case;
   Case_2_1_Test_destroy_90f6a1 : aliased Runner_1.Test_Case;
   Case_3_1_Test_parse_f83b07 : aliased Runner_1.Test_Case;
   Case_4_1_Test_getParams_728bfb : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_create_8ce989,
         "commandlineparsers.ads:13:4:",
         Test_create_8ce989'Access);
      Runner_1.Create
        (Case_2_1_Test_destroy_90f6a1,
         "commandlineparsers.ads:15:4:",
         Test_destroy_90f6a1'Access);
      Runner_1.Create
        (Case_3_1_Test_parse_f83b07,
         "commandlineparsers.ads:18:4:",
         Test_parse_f83b07'Access);
      Runner_1.Create
        (Case_4_1_Test_getParams_728bfb,
         "commandlineparsers.ads:21:4:",
         Test_getParams_728bfb'Access);

      Result.Add_Test (Case_1_1_Test_create_8ce989'Access);
      Result.Add_Test (Case_2_1_Test_destroy_90f6a1'Access);
      Result.Add_Test (Case_3_1_Test_parse_f83b07'Access);
      Result.Add_Test (Case_4_1_Test_getParams_728bfb'Access);

      return Result'Access;

   end Suite;

end CommandlineParsers.CommandlineParser_Test_Data.CommandlineParser_Tests.Suite;
--  end read only
