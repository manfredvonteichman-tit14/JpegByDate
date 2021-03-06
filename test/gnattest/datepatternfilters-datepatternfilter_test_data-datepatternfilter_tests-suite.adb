--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body DatePatternFilters.DatePatternFilter_Test_Data.DatePatternFilter_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.DatePatternFilters.DatePatternFilter_Test_Data.DatePatternFilter_Tests.Test_DatePatternFilter);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_create_1f0646 : aliased Runner_1.Test_Case;
   Case_2_1_Test_destroy_520ec2 : aliased Runner_1.Test_Case;
   Case_3_1_Test_applyThis_f0c86c : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_create_1f0646,
         "datepatternfilters.ads:14:4:",
         Test_create_1f0646'Access);
      Runner_1.Create
        (Case_2_1_Test_destroy_520ec2,
         "datepatternfilters.ads:16:4:",
         Test_destroy_520ec2'Access);
      Runner_1.Create
        (Case_3_1_Test_applyThis_f0c86c,
         "datepatternfilters.ads:19:4:",
         Test_applyThis_f0c86c'Access);

      Result.Add_Test (Case_1_1_Test_create_1f0646'Access);
      Result.Add_Test (Case_2_1_Test_destroy_520ec2'Access);
      Result.Add_Test (Case_3_1_Test_applyThis_f0c86c'Access);

      return Result'Access;

   end Suite;

end DatePatternFilters.DatePatternFilter_Test_Data.DatePatternFilter_Tests.Suite;
--  end read only
