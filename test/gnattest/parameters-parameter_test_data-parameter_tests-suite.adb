--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Parameters.Parameter_Test_Data.Parameter_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Parameters.Parameter_Test_Data.Parameter_Tests.Test_Parameter);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_create_b54415 : aliased Runner_1.Test_Case;
   Case_2_1_Test_destroy_b24e53 : aliased Runner_1.Test_Case;
   Case_3_1_Test_setPath_faf547 : aliased Runner_1.Test_Case;
   Case_4_1_Test_setPathRecursion_e324ed : aliased Runner_1.Test_Case;
   Case_5_1_Test_setFilePattern_567c09 : aliased Runner_1.Test_Case;
   Case_6_1_Test_setFileExtensionPattern_44d8b2 : aliased Runner_1.Test_Case;
   Case_7_1_Test_setFullName_ce486b : aliased Runner_1.Test_Case;
   Case_8_1_Test_setDatePattern_f2b5d9 : aliased Runner_1.Test_Case;
   Case_9_1_Test_setMinFileSize_9892fd : aliased Runner_1.Test_Case;
   Case_10_1_Test_setMaxFileSize_573c01 : aliased Runner_1.Test_Case;
   Case_11_1_Test_setDateRangeStart_369ce6 : aliased Runner_1.Test_Case;
   Case_12_1_Test_setDateRangeFinish_126865 : aliased Runner_1.Test_Case;
   Case_13_1_Test_setTimePattern_ec73e9 : aliased Runner_1.Test_Case;
   Case_14_1_Test_setTimeRangeStart_0859ee : aliased Runner_1.Test_Case;
   Case_15_1_Test_setTimeRangeFinish_2f7c64 : aliased Runner_1.Test_Case;
   Case_16_1_Test_setMinWidth_91512a : aliased Runner_1.Test_Case;
   Case_17_1_Test_setMaxWidth_b18635 : aliased Runner_1.Test_Case;
   Case_18_1_Test_setMinHeight_0be52e : aliased Runner_1.Test_Case;
   Case_19_1_Test_setMaxHeight_44b261 : aliased Runner_1.Test_Case;
   Case_20_1_Test_setHelp_0551fa : aliased Runner_1.Test_Case;
   Case_21_1_Test_setRename_789fd0 : aliased Runner_1.Test_Case;
   Case_22_1_Test_setCSV_240f4c : aliased Runner_1.Test_Case;
   Case_23_1_Test_setCSVseparator_9ee9c0 : aliased Runner_1.Test_Case;
   Case_24_1_Test_setDebug_308b04 : aliased Runner_1.Test_Case;
   Case_25_1_Test_getPath_fc393c : aliased Runner_1.Test_Case;
   Case_26_1_Test_getPathRecursion_450653 : aliased Runner_1.Test_Case;
   Case_27_1_Test_getFilePattern_de78d2 : aliased Runner_1.Test_Case;
   Case_28_1_Test_getFileExtensionPattern_b13d20 : aliased Runner_1.Test_Case;
   Case_29_1_Test_getFullName_169f79 : aliased Runner_1.Test_Case;
   Case_30_1_Test_getDatePattern_56846b : aliased Runner_1.Test_Case;
   Case_31_1_Test_getMinFileSize_96e0a9 : aliased Runner_1.Test_Case;
   Case_32_1_Test_getMaxFileSize_cdb058 : aliased Runner_1.Test_Case;
   Case_33_1_Test_getDateRangeStart_6a8fa9 : aliased Runner_1.Test_Case;
   Case_34_1_Test_getDateRangeFinish_3f5690 : aliased Runner_1.Test_Case;
   Case_35_1_Test_getTimePattern_e758ab : aliased Runner_1.Test_Case;
   Case_36_1_Test_getTimeRangeStart_07b143 : aliased Runner_1.Test_Case;
   Case_37_1_Test_getTimeRangeFinish_379e39 : aliased Runner_1.Test_Case;
   Case_38_1_Test_getMinWidth_08aec2 : aliased Runner_1.Test_Case;
   Case_39_1_Test_getMaxWidth_1d20dd : aliased Runner_1.Test_Case;
   Case_40_1_Test_getMinHeight_54b8b9 : aliased Runner_1.Test_Case;
   Case_41_1_Test_getMaxHeight_d9018b : aliased Runner_1.Test_Case;
   Case_42_1_Test_getHelp_ab59e1 : aliased Runner_1.Test_Case;
   Case_43_1_Test_getRename_42e141 : aliased Runner_1.Test_Case;
   Case_44_1_Test_getCSV_536ccc : aliased Runner_1.Test_Case;
   Case_45_1_Test_getCSVseparator_694a2a : aliased Runner_1.Test_Case;
   Case_46_1_Test_getDebug_9ba390 : aliased Runner_1.Test_Case;
   Case_47_1_Test_flagPath_c1a53c : aliased Runner_1.Test_Case;
   Case_48_1_Test_flagPathRecursion_6d9bb4 : aliased Runner_1.Test_Case;
   Case_49_1_Test_flagFilePattern_191069 : aliased Runner_1.Test_Case;
   Case_50_1_Test_flagFileExtensionPattern_83a5bb : aliased Runner_1.Test_Case;
   Case_51_1_Test_flagFullName_c12375 : aliased Runner_1.Test_Case;
   Case_52_1_Test_flagFileSize_5da7ff : aliased Runner_1.Test_Case;
   Case_53_1_Test_flagDatePattern_148097 : aliased Runner_1.Test_Case;
   Case_54_1_Test_flagDateRange_593993 : aliased Runner_1.Test_Case;
   Case_55_1_Test_flagTimePattern_50c4fa : aliased Runner_1.Test_Case;
   Case_56_1_Test_flagTimeRange_9b5a94 : aliased Runner_1.Test_Case;
   Case_57_1_Test_flagImageSize_9579af : aliased Runner_1.Test_Case;
   Case_58_1_Test_flagHelp_905052 : aliased Runner_1.Test_Case;
   Case_59_1_Test_flagRename_c65d1a : aliased Runner_1.Test_Case;
   Case_60_1_Test_flagCSV_0dad6c : aliased Runner_1.Test_Case;
   Case_61_1_Test_flagCSVseparator_b57765 : aliased Runner_1.Test_Case;
   Case_62_1_Test_flagDebug_2dbf3b : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_create_b54415,
         "parameters.ads:12:4:",
         Test_create_b54415'Access);
      Runner_1.Create
        (Case_2_1_Test_destroy_b24e53,
         "parameters.ads:14:4:",
         Test_destroy_b24e53'Access);
      Runner_1.Create
        (Case_3_1_Test_setPath_faf547,
         "parameters.ads:17:4:",
         Test_setPath_faf547'Access);
      Runner_1.Create
        (Case_4_1_Test_setPathRecursion_e324ed,
         "parameters.ads:18:4:",
         Test_setPathRecursion_e324ed'Access);
      Runner_1.Create
        (Case_5_1_Test_setFilePattern_567c09,
         "parameters.ads:19:4:",
         Test_setFilePattern_567c09'Access);
      Runner_1.Create
        (Case_6_1_Test_setFileExtensionPattern_44d8b2,
         "parameters.ads:20:4:",
         Test_setFileExtensionPattern_44d8b2'Access);
      Runner_1.Create
        (Case_7_1_Test_setFullName_ce486b,
         "parameters.ads:21:4:",
         Test_setFullName_ce486b'Access);
      Runner_1.Create
        (Case_8_1_Test_setDatePattern_f2b5d9,
         "parameters.ads:22:4:",
         Test_setDatePattern_f2b5d9'Access);
      Runner_1.Create
        (Case_9_1_Test_setMinFileSize_9892fd,
         "parameters.ads:23:4:",
         Test_setMinFileSize_9892fd'Access);
      Runner_1.Create
        (Case_10_1_Test_setMaxFileSize_573c01,
         "parameters.ads:24:4:",
         Test_setMaxFileSize_573c01'Access);
      Runner_1.Create
        (Case_11_1_Test_setDateRangeStart_369ce6,
         "parameters.ads:25:4:",
         Test_setDateRangeStart_369ce6'Access);
      Runner_1.Create
        (Case_12_1_Test_setDateRangeFinish_126865,
         "parameters.ads:26:4:",
         Test_setDateRangeFinish_126865'Access);
      Runner_1.Create
        (Case_13_1_Test_setTimePattern_ec73e9,
         "parameters.ads:27:4:",
         Test_setTimePattern_ec73e9'Access);
      Runner_1.Create
        (Case_14_1_Test_setTimeRangeStart_0859ee,
         "parameters.ads:28:4:",
         Test_setTimeRangeStart_0859ee'Access);
      Runner_1.Create
        (Case_15_1_Test_setTimeRangeFinish_2f7c64,
         "parameters.ads:29:4:",
         Test_setTimeRangeFinish_2f7c64'Access);
      Runner_1.Create
        (Case_16_1_Test_setMinWidth_91512a,
         "parameters.ads:30:4:",
         Test_setMinWidth_91512a'Access);
      Runner_1.Create
        (Case_17_1_Test_setMaxWidth_b18635,
         "parameters.ads:31:4:",
         Test_setMaxWidth_b18635'Access);
      Runner_1.Create
        (Case_18_1_Test_setMinHeight_0be52e,
         "parameters.ads:32:4:",
         Test_setMinHeight_0be52e'Access);
      Runner_1.Create
        (Case_19_1_Test_setMaxHeight_44b261,
         "parameters.ads:33:4:",
         Test_setMaxHeight_44b261'Access);
      Runner_1.Create
        (Case_20_1_Test_setHelp_0551fa,
         "parameters.ads:34:4:",
         Test_setHelp_0551fa'Access);
      Runner_1.Create
        (Case_21_1_Test_setRename_789fd0,
         "parameters.ads:35:4:",
         Test_setRename_789fd0'Access);
      Runner_1.Create
        (Case_22_1_Test_setCSV_240f4c,
         "parameters.ads:36:4:",
         Test_setCSV_240f4c'Access);
      Runner_1.Create
        (Case_23_1_Test_setCSVseparator_9ee9c0,
         "parameters.ads:37:4:",
         Test_setCSVseparator_9ee9c0'Access);
      Runner_1.Create
        (Case_24_1_Test_setDebug_308b04,
         "parameters.ads:38:4:",
         Test_setDebug_308b04'Access);
      Runner_1.Create
        (Case_25_1_Test_getPath_fc393c,
         "parameters.ads:41:4:",
         Test_getPath_fc393c'Access);
      Runner_1.Create
        (Case_26_1_Test_getPathRecursion_450653,
         "parameters.ads:42:4:",
         Test_getPathRecursion_450653'Access);
      Runner_1.Create
        (Case_27_1_Test_getFilePattern_de78d2,
         "parameters.ads:43:4:",
         Test_getFilePattern_de78d2'Access);
      Runner_1.Create
        (Case_28_1_Test_getFileExtensionPattern_b13d20,
         "parameters.ads:44:4:",
         Test_getFileExtensionPattern_b13d20'Access);
      Runner_1.Create
        (Case_29_1_Test_getFullName_169f79,
         "parameters.ads:45:4:",
         Test_getFullName_169f79'Access);
      Runner_1.Create
        (Case_30_1_Test_getDatePattern_56846b,
         "parameters.ads:46:4:",
         Test_getDatePattern_56846b'Access);
      Runner_1.Create
        (Case_31_1_Test_getMinFileSize_96e0a9,
         "parameters.ads:47:4:",
         Test_getMinFileSize_96e0a9'Access);
      Runner_1.Create
        (Case_32_1_Test_getMaxFileSize_cdb058,
         "parameters.ads:48:4:",
         Test_getMaxFileSize_cdb058'Access);
      Runner_1.Create
        (Case_33_1_Test_getDateRangeStart_6a8fa9,
         "parameters.ads:49:4:",
         Test_getDateRangeStart_6a8fa9'Access);
      Runner_1.Create
        (Case_34_1_Test_getDateRangeFinish_3f5690,
         "parameters.ads:50:4:",
         Test_getDateRangeFinish_3f5690'Access);
      Runner_1.Create
        (Case_35_1_Test_getTimePattern_e758ab,
         "parameters.ads:51:4:",
         Test_getTimePattern_e758ab'Access);
      Runner_1.Create
        (Case_36_1_Test_getTimeRangeStart_07b143,
         "parameters.ads:52:4:",
         Test_getTimeRangeStart_07b143'Access);
      Runner_1.Create
        (Case_37_1_Test_getTimeRangeFinish_379e39,
         "parameters.ads:53:4:",
         Test_getTimeRangeFinish_379e39'Access);
      Runner_1.Create
        (Case_38_1_Test_getMinWidth_08aec2,
         "parameters.ads:54:4:",
         Test_getMinWidth_08aec2'Access);
      Runner_1.Create
        (Case_39_1_Test_getMaxWidth_1d20dd,
         "parameters.ads:55:4:",
         Test_getMaxWidth_1d20dd'Access);
      Runner_1.Create
        (Case_40_1_Test_getMinHeight_54b8b9,
         "parameters.ads:56:4:",
         Test_getMinHeight_54b8b9'Access);
      Runner_1.Create
        (Case_41_1_Test_getMaxHeight_d9018b,
         "parameters.ads:57:4:",
         Test_getMaxHeight_d9018b'Access);
      Runner_1.Create
        (Case_42_1_Test_getHelp_ab59e1,
         "parameters.ads:58:4:",
         Test_getHelp_ab59e1'Access);
      Runner_1.Create
        (Case_43_1_Test_getRename_42e141,
         "parameters.ads:59:4:",
         Test_getRename_42e141'Access);
      Runner_1.Create
        (Case_44_1_Test_getCSV_536ccc,
         "parameters.ads:60:4:",
         Test_getCSV_536ccc'Access);
      Runner_1.Create
        (Case_45_1_Test_getCSVseparator_694a2a,
         "parameters.ads:61:4:",
         Test_getCSVseparator_694a2a'Access);
      Runner_1.Create
        (Case_46_1_Test_getDebug_9ba390,
         "parameters.ads:62:4:",
         Test_getDebug_9ba390'Access);
      Runner_1.Create
        (Case_47_1_Test_flagPath_c1a53c,
         "parameters.ads:65:4:",
         Test_flagPath_c1a53c'Access);
      Runner_1.Create
        (Case_48_1_Test_flagPathRecursion_6d9bb4,
         "parameters.ads:66:4:",
         Test_flagPathRecursion_6d9bb4'Access);
      Runner_1.Create
        (Case_49_1_Test_flagFilePattern_191069,
         "parameters.ads:67:4:",
         Test_flagFilePattern_191069'Access);
      Runner_1.Create
        (Case_50_1_Test_flagFileExtensionPattern_83a5bb,
         "parameters.ads:68:4:",
         Test_flagFileExtensionPattern_83a5bb'Access);
      Runner_1.Create
        (Case_51_1_Test_flagFullName_c12375,
         "parameters.ads:69:4:",
         Test_flagFullName_c12375'Access);
      Runner_1.Create
        (Case_52_1_Test_flagFileSize_5da7ff,
         "parameters.ads:70:4:",
         Test_flagFileSize_5da7ff'Access);
      Runner_1.Create
        (Case_53_1_Test_flagDatePattern_148097,
         "parameters.ads:71:4:",
         Test_flagDatePattern_148097'Access);
      Runner_1.Create
        (Case_54_1_Test_flagDateRange_593993,
         "parameters.ads:72:4:",
         Test_flagDateRange_593993'Access);
      Runner_1.Create
        (Case_55_1_Test_flagTimePattern_50c4fa,
         "parameters.ads:73:4:",
         Test_flagTimePattern_50c4fa'Access);
      Runner_1.Create
        (Case_56_1_Test_flagTimeRange_9b5a94,
         "parameters.ads:74:4:",
         Test_flagTimeRange_9b5a94'Access);
      Runner_1.Create
        (Case_57_1_Test_flagImageSize_9579af,
         "parameters.ads:75:4:",
         Test_flagImageSize_9579af'Access);
      Runner_1.Create
        (Case_58_1_Test_flagHelp_905052,
         "parameters.ads:76:4:",
         Test_flagHelp_905052'Access);
      Runner_1.Create
        (Case_59_1_Test_flagRename_c65d1a,
         "parameters.ads:77:4:",
         Test_flagRename_c65d1a'Access);
      Runner_1.Create
        (Case_60_1_Test_flagCSV_0dad6c,
         "parameters.ads:78:4:",
         Test_flagCSV_0dad6c'Access);
      Runner_1.Create
        (Case_61_1_Test_flagCSVseparator_b57765,
         "parameters.ads:79:4:",
         Test_flagCSVseparator_b57765'Access);
      Runner_1.Create
        (Case_62_1_Test_flagDebug_2dbf3b,
         "parameters.ads:80:4:",
         Test_flagDebug_2dbf3b'Access);

      Result.Add_Test (Case_1_1_Test_create_b54415'Access);
      Result.Add_Test (Case_2_1_Test_destroy_b24e53'Access);
      Result.Add_Test (Case_3_1_Test_setPath_faf547'Access);
      Result.Add_Test (Case_4_1_Test_setPathRecursion_e324ed'Access);
      Result.Add_Test (Case_5_1_Test_setFilePattern_567c09'Access);
      Result.Add_Test (Case_6_1_Test_setFileExtensionPattern_44d8b2'Access);
      Result.Add_Test (Case_7_1_Test_setFullName_ce486b'Access);
      Result.Add_Test (Case_8_1_Test_setDatePattern_f2b5d9'Access);
      Result.Add_Test (Case_9_1_Test_setMinFileSize_9892fd'Access);
      Result.Add_Test (Case_10_1_Test_setMaxFileSize_573c01'Access);
      Result.Add_Test (Case_11_1_Test_setDateRangeStart_369ce6'Access);
      Result.Add_Test (Case_12_1_Test_setDateRangeFinish_126865'Access);
      Result.Add_Test (Case_13_1_Test_setTimePattern_ec73e9'Access);
      Result.Add_Test (Case_14_1_Test_setTimeRangeStart_0859ee'Access);
      Result.Add_Test (Case_15_1_Test_setTimeRangeFinish_2f7c64'Access);
      Result.Add_Test (Case_16_1_Test_setMinWidth_91512a'Access);
      Result.Add_Test (Case_17_1_Test_setMaxWidth_b18635'Access);
      Result.Add_Test (Case_18_1_Test_setMinHeight_0be52e'Access);
      Result.Add_Test (Case_19_1_Test_setMaxHeight_44b261'Access);
      Result.Add_Test (Case_20_1_Test_setHelp_0551fa'Access);
      Result.Add_Test (Case_21_1_Test_setRename_789fd0'Access);
      Result.Add_Test (Case_22_1_Test_setCSV_240f4c'Access);
      Result.Add_Test (Case_23_1_Test_setCSVseparator_9ee9c0'Access);
      Result.Add_Test (Case_24_1_Test_setDebug_308b04'Access);
      Result.Add_Test (Case_25_1_Test_getPath_fc393c'Access);
      Result.Add_Test (Case_26_1_Test_getPathRecursion_450653'Access);
      Result.Add_Test (Case_27_1_Test_getFilePattern_de78d2'Access);
      Result.Add_Test (Case_28_1_Test_getFileExtensionPattern_b13d20'Access);
      Result.Add_Test (Case_29_1_Test_getFullName_169f79'Access);
      Result.Add_Test (Case_30_1_Test_getDatePattern_56846b'Access);
      Result.Add_Test (Case_31_1_Test_getMinFileSize_96e0a9'Access);
      Result.Add_Test (Case_32_1_Test_getMaxFileSize_cdb058'Access);
      Result.Add_Test (Case_33_1_Test_getDateRangeStart_6a8fa9'Access);
      Result.Add_Test (Case_34_1_Test_getDateRangeFinish_3f5690'Access);
      Result.Add_Test (Case_35_1_Test_getTimePattern_e758ab'Access);
      Result.Add_Test (Case_36_1_Test_getTimeRangeStart_07b143'Access);
      Result.Add_Test (Case_37_1_Test_getTimeRangeFinish_379e39'Access);
      Result.Add_Test (Case_38_1_Test_getMinWidth_08aec2'Access);
      Result.Add_Test (Case_39_1_Test_getMaxWidth_1d20dd'Access);
      Result.Add_Test (Case_40_1_Test_getMinHeight_54b8b9'Access);
      Result.Add_Test (Case_41_1_Test_getMaxHeight_d9018b'Access);
      Result.Add_Test (Case_42_1_Test_getHelp_ab59e1'Access);
      Result.Add_Test (Case_43_1_Test_getRename_42e141'Access);
      Result.Add_Test (Case_44_1_Test_getCSV_536ccc'Access);
      Result.Add_Test (Case_45_1_Test_getCSVseparator_694a2a'Access);
      Result.Add_Test (Case_46_1_Test_getDebug_9ba390'Access);
      Result.Add_Test (Case_47_1_Test_flagPath_c1a53c'Access);
      Result.Add_Test (Case_48_1_Test_flagPathRecursion_6d9bb4'Access);
      Result.Add_Test (Case_49_1_Test_flagFilePattern_191069'Access);
      Result.Add_Test (Case_50_1_Test_flagFileExtensionPattern_83a5bb'Access);
      Result.Add_Test (Case_51_1_Test_flagFullName_c12375'Access);
      Result.Add_Test (Case_52_1_Test_flagFileSize_5da7ff'Access);
      Result.Add_Test (Case_53_1_Test_flagDatePattern_148097'Access);
      Result.Add_Test (Case_54_1_Test_flagDateRange_593993'Access);
      Result.Add_Test (Case_55_1_Test_flagTimePattern_50c4fa'Access);
      Result.Add_Test (Case_56_1_Test_flagTimeRange_9b5a94'Access);
      Result.Add_Test (Case_57_1_Test_flagImageSize_9579af'Access);
      Result.Add_Test (Case_58_1_Test_flagHelp_905052'Access);
      Result.Add_Test (Case_59_1_Test_flagRename_c65d1a'Access);
      Result.Add_Test (Case_60_1_Test_flagCSV_0dad6c'Access);
      Result.Add_Test (Case_61_1_Test_flagCSVseparator_b57765'Access);
      Result.Add_Test (Case_62_1_Test_flagDebug_2dbf3b'Access);

      return Result'Access;

   end Suite;

end Parameters.Parameter_Test_Data.Parameter_Tests.Suite;
--  end read only
