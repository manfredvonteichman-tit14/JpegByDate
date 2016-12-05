--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with GNATtest_Generated;

generic
package Filters.Filter_Test_Data.Filter_Tests is

   type Test_Filter is abstract new
     GNATtest_Generated.GNATtest_Standard.Filters.Filter_Test_Data.Test_Filter with null record;


   --  filters.ads:13:4:create


   --  filters.ads:14:4:destroy

   procedure Test_apply_958b6e (Gnattest_T : in out Test_Filter);
   --  filters.ads:18:4:apply

   procedure Test_addNew_bbd892 (Gnattest_T : in out Test_Filter);
   --  filters.ads:22:4:addNew

   procedure Test_getNext_17b29c (Gnattest_T : in out Test_Filter);
   --  filters.ads:26:4:getNext


   --  filters.ads:31:4:applyThis

end Filters.Filter_Test_Data.Filter_Tests;
--  end read only
