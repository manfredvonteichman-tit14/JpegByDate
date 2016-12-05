pragma Ada_95;
pragma Warnings (Off);
pragma Source_File_Name (ada_main, Spec_File_Name => "b__test_runner.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__test_runner.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E177 : Short_Integer; pragma Import (Ada, E177, "system__os_lib_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "system__soft_links_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__exception_table_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "ada__io_exceptions_E");
   E298 : Short_Integer; pragma Import (Ada, E298, "ada__numerics_E");
   E044 : Short_Integer; pragma Import (Ada, E044, "ada__strings_E");
   E046 : Short_Integer; pragma Import (Ada, E046, "ada__strings__maps_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "ada__strings__maps__constants_E");
   E091 : Short_Integer; pragma Import (Ada, E091, "ada__tags_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "ada__streams_E");
   E061 : Short_Integer; pragma Import (Ada, E061, "interfaces__c_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__exceptions_E");
   E180 : Short_Integer; pragma Import (Ada, E180, "system__file_control_block_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "ada__streams__stream_io_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "system__file_io_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "system__finalization_root_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "ada__finalization_E");
   E200 : Short_Integer; pragma Import (Ada, E200, "system__regpat_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "system__storage_pools_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "system__finalization_masters_E");
   E164 : Short_Integer; pragma Import (Ada, E164, "system__storage_pools__subpools_E");
   E114 : Short_Integer; pragma Import (Ada, E114, "ada__calendar_E");
   E286 : Short_Integer; pragma Import (Ada, E286, "ada__calendar__time_zones_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "gnat__directory_operations_E");
   E222 : Short_Integer; pragma Import (Ada, E222, "system__assertions_E");
   E303 : Short_Integer; pragma Import (Ada, E303, "system__direct_io_E");
   E059 : Short_Integer; pragma Import (Ada, E059, "system__object_reader_E");
   E039 : Short_Integer; pragma Import (Ada, E039, "system__dwarf_lines_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "system__pool_global_E");
   E009 : Short_Integer; pragma Import (Ada, E009, "system__secondary_stack_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "ada__strings__unbounded_E");
   E282 : Short_Integer; pragma Import (Ada, E282, "ada__directories_E");
   E190 : Short_Integer; pragma Import (Ada, E190, "system__regexp_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "gnat__command_line_E");
   E034 : Short_Integer; pragma Import (Ada, E034, "system__traceback__symbolic_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "ada__text_io_E");
   E106 : Short_Integer; pragma Import (Ada, E106, "ada_containers__aunit_lists_E");
   E086 : Short_Integer; pragma Import (Ada, E086, "aunit_E");
   E088 : Short_Integer; pragma Import (Ada, E088, "aunit__memory_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "aunit__memory__utils_E");
   E120 : Short_Integer; pragma Import (Ada, E120, "aunit__tests_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "aunit__test_filters_E");
   E112 : Short_Integer; pragma Import (Ada, E112, "aunit__time_measure_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "aunit__test_results_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "aunit__assertions_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "aunit__reporter_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "aunit__reporter__gnattest_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "aunit__simple_test_cases_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "aunit__test_fixtures_E");
   E226 : Short_Integer; pragma Import (Ada, E226, "aunit__test_caller_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "aunit__test_suites_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "aunit__run_E");
   E240 : Short_Integer; pragma Import (Ada, E240, "exifparsers_E");
   E264 : Short_Integer; pragma Import (Ada, E264, "exifparsers__exifparser_test_data_E");
   E266 : Short_Integer; pragma Import (Ada, E266, "exifparsers__exifparser_test_data__exifparser_tests_E");
   E268 : Short_Integer; pragma Import (Ada, E268, "exifparsers__exifparser_test_data__exifparser_tests__suite_E");
   E194 : Short_Integer; pragma Import (Ada, E194, "gnattest_main_suite_E");
   E206 : Short_Integer; pragma Import (Ada, E206, "outputs_E");
   E228 : Short_Integer; pragma Import (Ada, E228, "consoleoutputs_E");
   E230 : Short_Integer; pragma Import (Ada, E230, "consoleoutputs__consoleoutput_test_data_E");
   E232 : Short_Integer; pragma Import (Ada, E232, "consoleoutputs__consoleoutput_test_data__consoleoutput_tests_E");
   E234 : Short_Integer; pragma Import (Ada, E234, "consoleoutputs__consoleoutput_test_data__consoleoutput_tests__suite_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "parameters_E");
   E248 : Short_Integer; pragma Import (Ada, E248, "filters_E");
   E238 : Short_Integer; pragma Import (Ada, E238, "exiffilters_E");
   E236 : Short_Integer; pragma Import (Ada, E236, "datepatternfilters_E");
   E250 : Short_Integer; pragma Import (Ada, E250, "datepatternfilters__datepatternfilter_test_data_E");
   E252 : Short_Integer; pragma Import (Ada, E252, "datepatternfilters__datepatternfilter_test_data__datepatternfilter_tests_E");
   E254 : Short_Integer; pragma Import (Ada, E254, "datepatternfilters__datepatternfilter_test_data__datepatternfilter_tests__suite_E");
   E256 : Short_Integer; pragma Import (Ada, E256, "daterangefilters_E");
   E258 : Short_Integer; pragma Import (Ada, E258, "daterangefilters__daterangefilter_test_data_E");
   E260 : Short_Integer; pragma Import (Ada, E260, "daterangefilters__daterangefilter_test_data__daterangefilter_tests_E");
   E262 : Short_Integer; pragma Import (Ada, E262, "daterangefilters__daterangefilter_test_data__daterangefilter_tests__suite_E");
   E272 : Short_Integer; pragma Import (Ada, E272, "filefilters_E");
   E270 : Short_Integer; pragma Import (Ada, E270, "fileextensionfilters_E");
   E274 : Short_Integer; pragma Import (Ada, E274, "fileextensionfilters__fileextensionfilter_test_data_E");
   E276 : Short_Integer; pragma Import (Ada, E276, "fileextensionfilters__fileextensionfilter_test_data__fileextensionfilter_tests_E");
   E278 : Short_Integer; pragma Import (Ada, E278, "fileextensionfilters__fileextensionfilter_test_data__fileextensionfilter_tests__suite_E");
   E309 : Short_Integer; pragma Import (Ada, E309, "filelisters_E");
   E280 : Short_Integer; pragma Import (Ada, E280, "filehandlers_E");
   E311 : Short_Integer; pragma Import (Ada, E311, "filehandlers__filehandler_test_data_E");
   E313 : Short_Integer; pragma Import (Ada, E313, "filehandlers__filehandler_test_data__filehandler_tests_E");
   E315 : Short_Integer; pragma Import (Ada, E315, "filehandlers__filehandler_test_data__filehandler_tests__suite_E");
   E336 : Short_Integer; pragma Import (Ada, E336, "filelisters__filelister_test_data_E");
   E337 : Short_Integer; pragma Import (Ada, E337, "filelisters__filelister_test_data__filelister_tests_E");
   E317 : Short_Integer; pragma Import (Ada, E317, "filenamefilters_E");
   E319 : Short_Integer; pragma Import (Ada, E319, "filenamefilters__filenamefilter_test_data_E");
   E321 : Short_Integer; pragma Import (Ada, E321, "filenamefilters__filenamefilter_test_data__filenamefilter_tests_E");
   E323 : Short_Integer; pragma Import (Ada, E323, "filenamefilters__filenamefilter_test_data__filenamefilter_tests__suite_E");
   E325 : Short_Integer; pragma Import (Ada, E325, "filesizefilters_E");
   E327 : Short_Integer; pragma Import (Ada, E327, "filesizefilters__filesizefilter_test_data_E");
   E329 : Short_Integer; pragma Import (Ada, E329, "filesizefilters__filesizefilter_test_data__filesizefilter_tests_E");
   E331 : Short_Integer; pragma Import (Ada, E331, "filesizefilters__filesizefilter_test_data__filesizefilter_tests__suite_E");
   E333 : Short_Integer; pragma Import (Ada, E333, "filesystemlisters_E");
   E335 : Short_Integer; pragma Import (Ada, E335, "filesystemlisters__filesystemlister_test_data_E");
   E339 : Short_Integer; pragma Import (Ada, E339, "filesystemlisters__filesystemlister_test_data__filesystemlister_tests_E");
   E341 : Short_Integer; pragma Import (Ada, E341, "filesystemlisters__filesystemlister_test_data__filesystemlister_tests__suite_E");
   E343 : Short_Integer; pragma Import (Ada, E343, "imagesizefilters_E");
   E345 : Short_Integer; pragma Import (Ada, E345, "imagesizefilters__imagesizefilter_test_data_E");
   E347 : Short_Integer; pragma Import (Ada, E347, "imagesizefilters__imagesizefilter_test_data__imagesizefilter_tests_E");
   E349 : Short_Integer; pragma Import (Ada, E349, "imagesizefilters__imagesizefilter_test_data__imagesizefilter_tests__suite_E");
   E205 : Short_Integer; pragma Import (Ada, E205, "inputs_E");
   E196 : Short_Integer; pragma Import (Ada, E196, "commandlineparsers_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "commandlineparsers__commandlineparser_test_data_E");
   E220 : Short_Integer; pragma Import (Ada, E220, "commandlineparsers__commandlineparser_test_data__commandlineparser_tests_E");
   E224 : Short_Integer; pragma Import (Ada, E224, "commandlineparsers__commandlineparser_test_data__commandlineparser_tests__suite_E");
   E351 : Short_Integer; pragma Import (Ada, E351, "parameters__parameter_test_data_E");
   E353 : Short_Integer; pragma Import (Ada, E353, "parameters__parameter_test_data__parameter_tests_E");
   E355 : Short_Integer; pragma Import (Ada, E355, "parameters__parameter_test_data__parameter_tests__suite_E");
   E242 : Short_Integer; pragma Import (Ada, E242, "pictures_E");
   E244 : Short_Integer; pragma Import (Ada, E244, "pictures__jpegpictures_E");
   E366 : Short_Integer; pragma Import (Ada, E366, "pictures__jpegpictures__test_data_E");
   E368 : Short_Integer; pragma Import (Ada, E368, "pictures__jpegpictures__test_data__tests_E");
   E370 : Short_Integer; pragma Import (Ada, E370, "pictures__jpegpictures__test_data__tests__suite_E");
   E358 : Short_Integer; pragma Import (Ada, E358, "pictures__picture_test_data_E");
   E360 : Short_Integer; pragma Import (Ada, E360, "pictures__picture_test_data__picture_tests_E");
   E357 : Short_Integer; pragma Import (Ada, E357, "pictures__jpegpictures__jpegpicture_test_data_E");
   E362 : Short_Integer; pragma Import (Ada, E362, "pictures__jpegpictures__jpegpicture_test_data__jpegpicture_tests_E");
   E364 : Short_Integer; pragma Import (Ada, E364, "pictures__jpegpictures__jpegpicture_test_data__jpegpicture_tests__suite_E");
   E372 : Short_Integer; pragma Import (Ada, E372, "pictures__test_data_E");
   E374 : Short_Integer; pragma Import (Ada, E374, "pictures__test_data__tests_E");
   E376 : Short_Integer; pragma Import (Ada, E376, "pictures__test_data__tests__suite_E");
   E246 : Short_Integer; pragma Import (Ada, E246, "pictures__tiffpictures_E");
   E378 : Short_Integer; pragma Import (Ada, E378, "pictures__tiffpictures__test_data_E");
   E380 : Short_Integer; pragma Import (Ada, E380, "pictures__tiffpictures__test_data__tests_E");
   E382 : Short_Integer; pragma Import (Ada, E382, "pictures__tiffpictures__test_data__tests__suite_E");
   E384 : Short_Integer; pragma Import (Ada, E384, "pictures__tiffpictures__tiffpicture_test_data_E");
   E386 : Short_Integer; pragma Import (Ada, E386, "pictures__tiffpictures__tiffpicture_test_data__tiffpicture_tests_E");
   E388 : Short_Integer; pragma Import (Ada, E388, "pictures__tiffpictures__tiffpicture_test_data__tiffpicture_tests__suite_E");
   E390 : Short_Integer; pragma Import (Ada, E390, "timepatternfilters_E");
   E392 : Short_Integer; pragma Import (Ada, E392, "timepatternfilters__timepatternfilter_test_data_E");
   E394 : Short_Integer; pragma Import (Ada, E394, "timepatternfilters__timepatternfilter_test_data__timepatternfilter_tests_E");
   E396 : Short_Integer; pragma Import (Ada, E396, "timepatternfilters__timepatternfilter_test_data__timepatternfilter_tests__suite_E");
   E398 : Short_Integer; pragma Import (Ada, E398, "timerangefilters_E");
   E400 : Short_Integer; pragma Import (Ada, E400, "timerangefilters__timerangefilter_test_data_E");
   E402 : Short_Integer; pragma Import (Ada, E402, "timerangefilters__timerangefilter_test_data__timerangefilter_tests_E");
   E404 : Short_Integer; pragma Import (Ada, E404, "timerangefilters__timerangefilter_test_data__timerangefilter_tests__suite_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "timerangefilters__timerangefilter_test_data__timerangefilter_tests__suite__finalize_body");
      begin
         E404 := E404 - 1;
         F1;
      end;
      E402 := E402 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "timerangefilters__timerangefilter_test_data__timerangefilter_tests__finalize_spec");
      begin
         F2;
      end;
      E400 := E400 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "timerangefilters__timerangefilter_test_data__finalize_spec");
      begin
         F3;
      end;
      E398 := E398 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "timerangefilters__finalize_spec");
      begin
         F4;
      end;
      declare
         procedure F5;
         pragma Import (Ada, F5, "timepatternfilters__timepatternfilter_test_data__timepatternfilter_tests__suite__finalize_body");
      begin
         E396 := E396 - 1;
         F5;
      end;
      E394 := E394 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "timepatternfilters__timepatternfilter_test_data__timepatternfilter_tests__finalize_spec");
      begin
         F6;
      end;
      E392 := E392 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "timepatternfilters__timepatternfilter_test_data__finalize_spec");
      begin
         F7;
      end;
      E390 := E390 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "timepatternfilters__finalize_spec");
      begin
         F8;
      end;
      declare
         procedure F9;
         pragma Import (Ada, F9, "pictures__tiffpictures__tiffpicture_test_data__tiffpicture_tests__suite__finalize_body");
      begin
         E388 := E388 - 1;
         F9;
      end;
      E386 := E386 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "pictures__tiffpictures__tiffpicture_test_data__tiffpicture_tests__finalize_spec");
      begin
         F10;
      end;
      E384 := E384 - 1;
      declare
         procedure F11;
         pragma Import (Ada, F11, "pictures__tiffpictures__tiffpicture_test_data__finalize_spec");
      begin
         F11;
      end;
      declare
         procedure F12;
         pragma Import (Ada, F12, "pictures__tiffpictures__test_data__tests__suite__finalize_body");
      begin
         E382 := E382 - 1;
         F12;
      end;
      E380 := E380 - 1;
      declare
         procedure F13;
         pragma Import (Ada, F13, "pictures__tiffpictures__test_data__tests__finalize_spec");
      begin
         F13;
      end;
      E378 := E378 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "pictures__tiffpictures__test_data__finalize_spec");
      begin
         F14;
      end;
      E240 := E240 - 1;
      declare
         procedure F15;
         pragma Import (Ada, F15, "pictures__jpegpictures__finalize_body");
      begin
         E244 := E244 - 1;
         F15;
      end;
      declare
         procedure F16;
         pragma Import (Ada, F16, "pictures__tiffpictures__finalize_body");
      begin
         E246 := E246 - 1;
         F16;
      end;
      declare
         procedure F17;
         pragma Import (Ada, F17, "pictures__tiffpictures__finalize_spec");
      begin
         F17;
      end;
      declare
         procedure F18;
         pragma Import (Ada, F18, "pictures__test_data__tests__suite__finalize_body");
      begin
         E376 := E376 - 1;
         F18;
      end;
      E374 := E374 - 1;
      declare
         procedure F19;
         pragma Import (Ada, F19, "pictures__test_data__tests__finalize_spec");
      begin
         F19;
      end;
      E372 := E372 - 1;
      declare
         procedure F20;
         pragma Import (Ada, F20, "pictures__test_data__finalize_spec");
      begin
         F20;
      end;
      declare
         procedure F21;
         pragma Import (Ada, F21, "pictures__jpegpictures__jpegpicture_test_data__jpegpicture_tests__suite__finalize_body");
      begin
         E364 := E364 - 1;
         F21;
      end;
      E362 := E362 - 1;
      declare
         procedure F22;
         pragma Import (Ada, F22, "pictures__jpegpictures__jpegpicture_test_data__jpegpicture_tests__finalize_spec");
      begin
         F22;
      end;
      E357 := E357 - 1;
      declare
         procedure F23;
         pragma Import (Ada, F23, "pictures__jpegpictures__jpegpicture_test_data__finalize_spec");
      begin
         F23;
      end;
      declare
         procedure F24;
         pragma Import (Ada, F24, "pictures__picture_test_data__finalize_spec");
      begin
         E358 := E358 - 1;
         F24;
      end;
      declare
         procedure F25;
         pragma Import (Ada, F25, "pictures__jpegpictures__test_data__tests__suite__finalize_body");
      begin
         E370 := E370 - 1;
         F25;
      end;
      E368 := E368 - 1;
      declare
         procedure F26;
         pragma Import (Ada, F26, "pictures__jpegpictures__test_data__tests__finalize_spec");
      begin
         F26;
      end;
      E366 := E366 - 1;
      declare
         procedure F27;
         pragma Import (Ada, F27, "pictures__jpegpictures__test_data__finalize_spec");
      begin
         F27;
      end;
      declare
         procedure F28;
         pragma Import (Ada, F28, "pictures__jpegpictures__finalize_spec");
      begin
         F28;
      end;
      E280 := E280 - 1;
      declare
         procedure F29;
         pragma Import (Ada, F29, "parameters__parameter_test_data__parameter_tests__suite__finalize_body");
      begin
         E355 := E355 - 1;
         F29;
      end;
      E353 := E353 - 1;
      declare
         procedure F30;
         pragma Import (Ada, F30, "parameters__parameter_test_data__parameter_tests__finalize_spec");
      begin
         F30;
      end;
      E351 := E351 - 1;
      declare
         procedure F31;
         pragma Import (Ada, F31, "parameters__parameter_test_data__finalize_spec");
      begin
         F31;
      end;
      declare
         procedure F32;
         pragma Import (Ada, F32, "commandlineparsers__commandlineparser_test_data__commandlineparser_tests__suite__finalize_body");
      begin
         E224 := E224 - 1;
         F32;
      end;
      E220 := E220 - 1;
      declare
         procedure F33;
         pragma Import (Ada, F33, "commandlineparsers__commandlineparser_test_data__commandlineparser_tests__finalize_spec");
      begin
         F33;
      end;
      E216 := E216 - 1;
      declare
         procedure F34;
         pragma Import (Ada, F34, "commandlineparsers__commandlineparser_test_data__finalize_spec");
      begin
         F34;
      end;
      E196 := E196 - 1;
      declare
         procedure F35;
         pragma Import (Ada, F35, "commandlineparsers__finalize_spec");
      begin
         F35;
      end;
      declare
         procedure F36;
         pragma Import (Ada, F36, "imagesizefilters__imagesizefilter_test_data__imagesizefilter_tests__suite__finalize_body");
      begin
         E349 := E349 - 1;
         F36;
      end;
      E347 := E347 - 1;
      declare
         procedure F37;
         pragma Import (Ada, F37, "imagesizefilters__imagesizefilter_test_data__imagesizefilter_tests__finalize_spec");
      begin
         F37;
      end;
      E345 := E345 - 1;
      declare
         procedure F38;
         pragma Import (Ada, F38, "imagesizefilters__imagesizefilter_test_data__finalize_spec");
      begin
         F38;
      end;
      E343 := E343 - 1;
      declare
         procedure F39;
         pragma Import (Ada, F39, "imagesizefilters__finalize_spec");
      begin
         F39;
      end;
      declare
         procedure F40;
         pragma Import (Ada, F40, "filesystemlisters__filesystemlister_test_data__filesystemlister_tests__suite__finalize_body");
      begin
         E341 := E341 - 1;
         F40;
      end;
      E339 := E339 - 1;
      declare
         procedure F41;
         pragma Import (Ada, F41, "filesystemlisters__filesystemlister_test_data__filesystemlister_tests__finalize_spec");
      begin
         F41;
      end;
      declare
         procedure F42;
         pragma Import (Ada, F42, "filesystemlisters__filesystemlister_test_data__finalize_body");
      begin
         E335 := E335 - 1;
         F42;
      end;
      declare
         procedure F43;
         pragma Import (Ada, F43, "filesystemlisters__filesystemlister_test_data__finalize_spec");
      begin
         F43;
      end;
      declare
         procedure F44;
         pragma Import (Ada, F44, "filesystemlisters__finalize_body");
      begin
         E333 := E333 - 1;
         F44;
      end;
      declare
         procedure F45;
         pragma Import (Ada, F45, "filesystemlisters__finalize_spec");
      begin
         F45;
      end;
      declare
         procedure F46;
         pragma Import (Ada, F46, "filesizefilters__filesizefilter_test_data__filesizefilter_tests__suite__finalize_body");
      begin
         E331 := E331 - 1;
         F46;
      end;
      E329 := E329 - 1;
      declare
         procedure F47;
         pragma Import (Ada, F47, "filesizefilters__filesizefilter_test_data__filesizefilter_tests__finalize_spec");
      begin
         F47;
      end;
      E327 := E327 - 1;
      declare
         procedure F48;
         pragma Import (Ada, F48, "filesizefilters__filesizefilter_test_data__finalize_spec");
      begin
         F48;
      end;
      E325 := E325 - 1;
      declare
         procedure F49;
         pragma Import (Ada, F49, "filesizefilters__finalize_spec");
      begin
         F49;
      end;
      declare
         procedure F50;
         pragma Import (Ada, F50, "filenamefilters__filenamefilter_test_data__filenamefilter_tests__suite__finalize_body");
      begin
         E323 := E323 - 1;
         F50;
      end;
      E321 := E321 - 1;
      declare
         procedure F51;
         pragma Import (Ada, F51, "filenamefilters__filenamefilter_test_data__filenamefilter_tests__finalize_spec");
      begin
         F51;
      end;
      E319 := E319 - 1;
      declare
         procedure F52;
         pragma Import (Ada, F52, "filenamefilters__filenamefilter_test_data__finalize_spec");
      begin
         F52;
      end;
      E317 := E317 - 1;
      declare
         procedure F53;
         pragma Import (Ada, F53, "filenamefilters__finalize_spec");
      begin
         F53;
      end;
      declare
         procedure F54;
         pragma Import (Ada, F54, "filelisters__filelister_test_data__finalize_spec");
      begin
         E336 := E336 - 1;
         F54;
      end;
      declare
         procedure F55;
         pragma Import (Ada, F55, "filehandlers__filehandler_test_data__filehandler_tests__suite__finalize_body");
      begin
         E315 := E315 - 1;
         F55;
      end;
      E313 := E313 - 1;
      declare
         procedure F56;
         pragma Import (Ada, F56, "filehandlers__filehandler_test_data__filehandler_tests__finalize_spec");
      begin
         F56;
      end;
      E311 := E311 - 1;
      declare
         procedure F57;
         pragma Import (Ada, F57, "filehandlers__filehandler_test_data__finalize_spec");
      begin
         F57;
      end;
      declare
         procedure F58;
         pragma Import (Ada, F58, "filehandlers__finalize_spec");
      begin
         F58;
      end;
      declare
         procedure F59;
         pragma Import (Ada, F59, "fileextensionfilters__fileextensionfilter_test_data__fileextensionfilter_tests__suite__finalize_body");
      begin
         E278 := E278 - 1;
         F59;
      end;
      E276 := E276 - 1;
      declare
         procedure F60;
         pragma Import (Ada, F60, "fileextensionfilters__fileextensionfilter_test_data__fileextensionfilter_tests__finalize_spec");
      begin
         F60;
      end;
      E274 := E274 - 1;
      declare
         procedure F61;
         pragma Import (Ada, F61, "fileextensionfilters__fileextensionfilter_test_data__finalize_spec");
      begin
         F61;
      end;
      E270 := E270 - 1;
      declare
         procedure F62;
         pragma Import (Ada, F62, "fileextensionfilters__finalize_spec");
      begin
         F62;
      end;
      declare
         procedure F63;
         pragma Import (Ada, F63, "daterangefilters__daterangefilter_test_data__daterangefilter_tests__suite__finalize_body");
      begin
         E262 := E262 - 1;
         F63;
      end;
      E260 := E260 - 1;
      declare
         procedure F64;
         pragma Import (Ada, F64, "daterangefilters__daterangefilter_test_data__daterangefilter_tests__finalize_spec");
      begin
         F64;
      end;
      E258 := E258 - 1;
      declare
         procedure F65;
         pragma Import (Ada, F65, "daterangefilters__daterangefilter_test_data__finalize_spec");
      begin
         F65;
      end;
      E256 := E256 - 1;
      declare
         procedure F66;
         pragma Import (Ada, F66, "daterangefilters__finalize_spec");
      begin
         F66;
      end;
      declare
         procedure F67;
         pragma Import (Ada, F67, "datepatternfilters__datepatternfilter_test_data__datepatternfilter_tests__suite__finalize_body");
      begin
         E254 := E254 - 1;
         F67;
      end;
      E252 := E252 - 1;
      declare
         procedure F68;
         pragma Import (Ada, F68, "datepatternfilters__datepatternfilter_test_data__datepatternfilter_tests__finalize_spec");
      begin
         F68;
      end;
      E250 := E250 - 1;
      declare
         procedure F69;
         pragma Import (Ada, F69, "datepatternfilters__datepatternfilter_test_data__finalize_spec");
      begin
         F69;
      end;
      E236 := E236 - 1;
      declare
         procedure F70;
         pragma Import (Ada, F70, "datepatternfilters__finalize_spec");
      begin
         F70;
      end;
      declare
         procedure F71;
         pragma Import (Ada, F71, "parameters__finalize_body");
      begin
         E208 := E208 - 1;
         F71;
      end;
      declare
         procedure F72;
         pragma Import (Ada, F72, "parameters__finalize_spec");
      begin
         F72;
      end;
      declare
         procedure F73;
         pragma Import (Ada, F73, "consoleoutputs__consoleoutput_test_data__consoleoutput_tests__suite__finalize_body");
      begin
         E234 := E234 - 1;
         F73;
      end;
      E232 := E232 - 1;
      declare
         procedure F74;
         pragma Import (Ada, F74, "consoleoutputs__consoleoutput_test_data__consoleoutput_tests__finalize_spec");
      begin
         F74;
      end;
      E230 := E230 - 1;
      declare
         procedure F75;
         pragma Import (Ada, F75, "consoleoutputs__consoleoutput_test_data__finalize_spec");
      begin
         F75;
      end;
      E228 := E228 - 1;
      declare
         procedure F76;
         pragma Import (Ada, F76, "consoleoutputs__finalize_spec");
      begin
         F76;
      end;
      declare
         procedure F77;
         pragma Import (Ada, F77, "exifparsers__exifparser_test_data__exifparser_tests__suite__finalize_body");
      begin
         E268 := E268 - 1;
         F77;
      end;
      E266 := E266 - 1;
      declare
         procedure F78;
         pragma Import (Ada, F78, "exifparsers__exifparser_test_data__exifparser_tests__finalize_spec");
      begin
         F78;
      end;
      E264 := E264 - 1;
      declare
         procedure F79;
         pragma Import (Ada, F79, "exifparsers__exifparser_test_data__finalize_spec");
      begin
         F79;
      end;
      declare
         procedure F80;
         pragma Import (Ada, F80, "exifparsers__finalize_spec");
      begin
         F80;
      end;
      E152 := E152 - 1;
      declare
         procedure F81;
         pragma Import (Ada, F81, "aunit__test_suites__finalize_spec");
      begin
         F81;
      end;
      E218 := E218 - 1;
      declare
         procedure F82;
         pragma Import (Ada, F82, "aunit__test_fixtures__finalize_spec");
      begin
         F82;
      end;
      E099 := E099 - 1;
      E101 := E101 - 1;
      declare
         procedure F83;
         pragma Import (Ada, F83, "aunit__simple_test_cases__finalize_spec");
      begin
         F83;
      end;
      E144 := E144 - 1;
      declare
         procedure F84;
         pragma Import (Ada, F84, "aunit__reporter__gnattest__finalize_spec");
      begin
         F84;
      end;
      E103 := E103 - 1;
      declare
         procedure F85;
         pragma Import (Ada, F85, "aunit__assertions__finalize_spec");
      begin
         F85;
      end;
      E110 := E110 - 1;
      declare
         procedure F86;
         pragma Import (Ada, F86, "aunit__test_results__finalize_spec");
      begin
         F86;
      end;
      declare
         procedure F87;
         pragma Import (Ada, F87, "aunit__test_filters__finalize_spec");
      begin
         F87;
      end;
      declare
         procedure F88;
         pragma Import (Ada, F88, "aunit__tests__finalize_spec");
      begin
         E120 := E120 - 1;
         F88;
      end;
      E173 := E173 - 1;
      declare
         procedure F89;
         pragma Import (Ada, F89, "ada__text_io__finalize_spec");
      begin
         F89;
      end;
      E282 := E282 - 1;
      E190 := E190 - 1;
      declare
         procedure F90;
         pragma Import (Ada, F90, "system__regexp__finalize_spec");
      begin
         F90;
      end;
      declare
         procedure F91;
         pragma Import (Ada, F91, "ada__directories__finalize_spec");
      begin
         F91;
      end;
      E156 := E156 - 1;
      declare
         procedure F92;
         pragma Import (Ada, F92, "ada__strings__unbounded__finalize_spec");
      begin
         F92;
      end;
      declare
         procedure F93;
         pragma Import (Ada, F93, "system__file_io__finalize_body");
      begin
         E175 := E175 - 1;
         F93;
      end;
      E122 := E122 - 1;
      E164 := E164 - 1;
      E134 := E134 - 1;
      declare
         procedure F94;
         pragma Import (Ada, F94, "system__pool_global__finalize_spec");
      begin
         F94;
      end;
      E303 := E303 - 1;
      declare
         procedure F95;
         pragma Import (Ada, F95, "system__direct_io__finalize_spec");
      begin
         F95;
      end;
      declare
         procedure F96;
         pragma Import (Ada, F96, "system__storage_pools__subpools__finalize_spec");
      begin
         F96;
      end;
      declare
         procedure F97;
         pragma Import (Ada, F97, "system__finalization_masters__finalize_spec");
      begin
         F97;
      end;
      E212 := E212 - 1;
      declare
         procedure F98;
         pragma Import (Ada, F98, "ada__streams__stream_io__finalize_spec");
      begin
         F98;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E019 := E019 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E128 := E128 + 1;
      Ada.Numerics'Elab_Spec;
      E298 := E298 + 1;
      Ada.Strings'Elab_Spec;
      E044 := E044 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E050 := E050 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E127 := E127 + 1;
      Interfaces.C'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E021 := E021 + 1;
      System.File_Control_Block'Elab_Spec;
      E180 := E180 + 1;
      Ada.Streams.Stream_Io'Elab_Spec;
      E212 := E212 + 1;
      System.Finalization_Root'Elab_Spec;
      E130 := E130 + 1;
      Ada.Finalization'Elab_Spec;
      E125 := E125 + 1;
      System.Regpat'Elab_Spec;
      System.Storage_Pools'Elab_Spec;
      E132 := E132 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Spec;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E114 := E114 + 1;
      Ada.Calendar.Time_Zones'Elab_Spec;
      E286 := E286 + 1;
      Gnat.Directory_Operations'Elab_Spec;
      System.Assertions'Elab_Spec;
      E222 := E222 + 1;
      System.Direct_Io'Elab_Spec;
      E303 := E303 + 1;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      System.Pool_Global'Elab_Spec;
      E134 := E134 + 1;
      E164 := E164 + 1;
      System.Finalization_Masters'Elab_Body;
      E122 := E122 + 1;
      E200 := E200 + 1;
      System.File_Io'Elab_Body;
      E175 := E175 + 1;
      E061 := E061 + 1;
      Ada.Tags'Elab_Body;
      E091 := E091 + 1;
      E046 := E046 + 1;
      System.Soft_Links'Elab_Body;
      E013 := E013 + 1;
      System.Os_Lib'Elab_Body;
      E177 := E177 + 1;
      System.Secondary_Stack'Elab_Body;
      E009 := E009 + 1;
      E039 := E039 + 1;
      E059 := E059 + 1;
      Gnat.Directory_Operations'Elab_Body;
      E182 := E182 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E156 := E156 + 1;
      Ada.Directories'Elab_Spec;
      System.Regexp'Elab_Spec;
      E190 := E190 + 1;
      Ada.Directories'Elab_Body;
      E282 := E282 + 1;
      Gnat.Command_Line'Elab_Spec;
      System.Traceback.Symbolic'Elab_Body;
      E034 := E034 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E173 := E173 + 1;
      Gnat.Command_Line'Elab_Body;
      E154 := E154 + 1;
      E088 := E088 + 1;
      E086 := E086 + 1;
      E108 := E108 + 1;
      E106 := E106 + 1;
      Aunit.Tests'Elab_Spec;
      E120 := E120 + 1;
      Aunit.Test_Filters'Elab_Spec;
      Aunit.Time_Measure'Elab_Spec;
      E112 := E112 + 1;
      Aunit.Test_Results'Elab_Spec;
      E110 := E110 + 1;
      Aunit.Assertions'Elab_Spec;
      Aunit.Assertions'Elab_Body;
      E103 := E103 + 1;
      Aunit.Reporter'Elab_Spec;
      E142 := E142 + 1;
      Aunit.Reporter.Gnattest'Elab_Spec;
      E144 := E144 + 1;
      Aunit.Simple_Test_Cases'Elab_Spec;
      E101 := E101 + 1;
      E099 := E099 + 1;
      Aunit.Test_Fixtures'Elab_Spec;
      E218 := E218 + 1;
      E226 := E226 + 1;
      Aunit.Test_Suites'Elab_Spec;
      E152 := E152 + 1;
      E150 := E150 + 1;
      exifparsers'elab_spec;
      Exifparsers.Exifparser_Test_Data'Elab_Spec;
      Exifparsers.Exifparser_Test_Data'Elab_Body;
      E264 := E264 + 1;
      Exifparsers.Exifparser_Test_Data.Exifparser_Tests'Elab_Spec;
      E266 := E266 + 1;
      Exifparsers.Exifparser_Test_Data.Exifparser_Tests.Suite'Elab_Body;
      E268 := E268 + 1;
      Outputs'Elab_Spec;
      E206 := E206 + 1;
      consoleoutputs'elab_spec;
      E228 := E228 + 1;
      Consoleoutputs.Consoleoutput_Test_Data'Elab_Spec;
      Consoleoutputs.Consoleoutput_Test_Data'Elab_Body;
      E230 := E230 + 1;
      Consoleoutputs.Consoleoutput_Test_Data.Consoleoutput_Tests'Elab_Spec;
      E232 := E232 + 1;
      Consoleoutputs.Consoleoutput_Test_Data.Consoleoutput_Tests.Suite'Elab_Body;
      E234 := E234 + 1;
      Parameters'Elab_Spec;
      Parameters'Elab_Body;
      E208 := E208 + 1;
      E248 := E248 + 1;
      Exiffilters'Elab_Spec;
      E238 := E238 + 1;
      datepatternfilters'elab_spec;
      E236 := E236 + 1;
      Datepatternfilters.Datepatternfilter_Test_Data'Elab_Spec;
      Datepatternfilters.Datepatternfilter_Test_Data'Elab_Body;
      E250 := E250 + 1;
      Datepatternfilters.Datepatternfilter_Test_Data.Datepatternfilter_Tests'Elab_Spec;
      E252 := E252 + 1;
      Datepatternfilters.Datepatternfilter_Test_Data.Datepatternfilter_Tests.Suite'Elab_Body;
      E254 := E254 + 1;
      daterangefilters'elab_spec;
      E256 := E256 + 1;
      Daterangefilters.Daterangefilter_Test_Data'Elab_Spec;
      Daterangefilters.Daterangefilter_Test_Data'Elab_Body;
      E258 := E258 + 1;
      Daterangefilters.Daterangefilter_Test_Data.Daterangefilter_Tests'Elab_Spec;
      E260 := E260 + 1;
      Daterangefilters.Daterangefilter_Test_Data.Daterangefilter_Tests.Suite'Elab_Body;
      E262 := E262 + 1;
      Filefilters'Elab_Spec;
      E272 := E272 + 1;
      fileextensionfilters'elab_spec;
      E270 := E270 + 1;
      Fileextensionfilters.Fileextensionfilter_Test_Data'Elab_Spec;
      Fileextensionfilters.Fileextensionfilter_Test_Data'Elab_Body;
      E274 := E274 + 1;
      Fileextensionfilters.Fileextensionfilter_Test_Data.Fileextensionfilter_Tests'Elab_Spec;
      E276 := E276 + 1;
      Fileextensionfilters.Fileextensionfilter_Test_Data.Fileextensionfilter_Tests.Suite'Elab_Body;
      E278 := E278 + 1;
      filelisters'elab_spec;
      E309 := E309 + 1;
      filehandlers'elab_spec;
      Filehandlers.Filehandler_Test_Data'Elab_Spec;
      Filehandlers.Filehandler_Test_Data'Elab_Body;
      E311 := E311 + 1;
      Filehandlers.Filehandler_Test_Data.Filehandler_Tests'Elab_Spec;
      E313 := E313 + 1;
      Filehandlers.Filehandler_Test_Data.Filehandler_Tests.Suite'Elab_Body;
      E315 := E315 + 1;
      Filelisters.Filelister_Test_Data'Elab_Spec;
      E336 := E336 + 1;
      Filelisters.Filelister_Test_Data.Filelister_Tests'Elab_Spec;
      E337 := E337 + 1;
      filenamefilters'elab_spec;
      E317 := E317 + 1;
      Filenamefilters.Filenamefilter_Test_Data'Elab_Spec;
      Filenamefilters.Filenamefilter_Test_Data'Elab_Body;
      E319 := E319 + 1;
      Filenamefilters.Filenamefilter_Test_Data.Filenamefilter_Tests'Elab_Spec;
      E321 := E321 + 1;
      Filenamefilters.Filenamefilter_Test_Data.Filenamefilter_Tests.Suite'Elab_Body;
      E323 := E323 + 1;
      filesizefilters'elab_spec;
      E325 := E325 + 1;
      Filesizefilters.Filesizefilter_Test_Data'Elab_Spec;
      Filesizefilters.Filesizefilter_Test_Data'Elab_Body;
      E327 := E327 + 1;
      Filesizefilters.Filesizefilter_Test_Data.Filesizefilter_Tests'Elab_Spec;
      E329 := E329 + 1;
      Filesizefilters.Filesizefilter_Test_Data.Filesizefilter_Tests.Suite'Elab_Body;
      E331 := E331 + 1;
      filesystemlisters'elab_spec;
      filesystemlisters'elab_body;
      E333 := E333 + 1;
      Filesystemlisters.Filesystemlister_Test_Data'Elab_Spec;
      Filesystemlisters.Filesystemlister_Test_Data'Elab_Body;
      E335 := E335 + 1;
      Filesystemlisters.Filesystemlister_Test_Data.Filesystemlister_Tests'Elab_Spec;
      E339 := E339 + 1;
      Filesystemlisters.Filesystemlister_Test_Data.Filesystemlister_Tests.Suite'Elab_Body;
      E341 := E341 + 1;
      imagesizefilters'elab_spec;
      E343 := E343 + 1;
      Imagesizefilters.Imagesizefilter_Test_Data'Elab_Spec;
      Imagesizefilters.Imagesizefilter_Test_Data'Elab_Body;
      E345 := E345 + 1;
      Imagesizefilters.Imagesizefilter_Test_Data.Imagesizefilter_Tests'Elab_Spec;
      E347 := E347 + 1;
      Imagesizefilters.Imagesizefilter_Test_Data.Imagesizefilter_Tests.Suite'Elab_Body;
      E349 := E349 + 1;
      Inputs'Elab_Spec;
      E205 := E205 + 1;
      commandlineparsers'elab_spec;
      E196 := E196 + 1;
      Commandlineparsers.Commandlineparser_Test_Data'Elab_Spec;
      Commandlineparsers.Commandlineparser_Test_Data'Elab_Body;
      E216 := E216 + 1;
      Commandlineparsers.Commandlineparser_Test_Data.Commandlineparser_Tests'Elab_Spec;
      E220 := E220 + 1;
      Commandlineparsers.Commandlineparser_Test_Data.Commandlineparser_Tests.Suite'Elab_Body;
      E224 := E224 + 1;
      Parameters.Parameter_Test_Data'Elab_Spec;
      Parameters.Parameter_Test_Data'Elab_Body;
      E351 := E351 + 1;
      Parameters.Parameter_Test_Data.Parameter_Tests'Elab_Spec;
      E353 := E353 + 1;
      Parameters.Parameter_Test_Data.Parameter_Tests.Suite'Elab_Body;
      E355 := E355 + 1;
      Pictures'Elab_Spec;
      E280 := E280 + 1;
      Pictures.Jpegpictures'Elab_Spec;
      Pictures.Jpegpictures.Test_Data'Elab_Spec;
      E366 := E366 + 1;
      Pictures.Jpegpictures.Test_Data.Tests'Elab_Spec;
      E368 := E368 + 1;
      Pictures.Jpegpictures.Test_Data.Tests.Suite'Elab_Body;
      E370 := E370 + 1;
      Pictures.Picture_Test_Data'Elab_Spec;
      E358 := E358 + 1;
      Pictures.Picture_Test_Data.Picture_Tests'Elab_Spec;
      E360 := E360 + 1;
      Pictures.Jpegpictures.Jpegpicture_Test_Data'Elab_Spec;
      Pictures.Jpegpictures.Jpegpicture_Test_Data'Elab_Body;
      E357 := E357 + 1;
      Pictures.Jpegpictures.Jpegpicture_Test_Data.Jpegpicture_Tests'Elab_Spec;
      E362 := E362 + 1;
      Pictures.Jpegpictures.Jpegpicture_Test_Data.Jpegpicture_Tests.Suite'Elab_Body;
      E364 := E364 + 1;
      Pictures.Test_Data'Elab_Spec;
      E372 := E372 + 1;
      Pictures.Test_Data.Tests'Elab_Spec;
      E374 := E374 + 1;
      Pictures.Test_Data.Tests.Suite'Elab_Body;
      E376 := E376 + 1;
      Pictures.Tiffpictures'Elab_Spec;
      Pictures.Tiffpictures'Elab_Body;
      E246 := E246 + 1;
      Pictures.Jpegpictures'Elab_Body;
      E244 := E244 + 1;
      E242 := E242 + 1;
      E240 := E240 + 1;
      Pictures.Tiffpictures.Test_Data'Elab_Spec;
      E378 := E378 + 1;
      Pictures.Tiffpictures.Test_Data.Tests'Elab_Spec;
      E380 := E380 + 1;
      Pictures.Tiffpictures.Test_Data.Tests.Suite'Elab_Body;
      E382 := E382 + 1;
      Pictures.Tiffpictures.Tiffpicture_Test_Data'Elab_Spec;
      Pictures.Tiffpictures.Tiffpicture_Test_Data'Elab_Body;
      E384 := E384 + 1;
      Pictures.Tiffpictures.Tiffpicture_Test_Data.Tiffpicture_Tests'Elab_Spec;
      E386 := E386 + 1;
      Pictures.Tiffpictures.Tiffpicture_Test_Data.Tiffpicture_Tests.Suite'Elab_Body;
      E388 := E388 + 1;
      timepatternfilters'elab_spec;
      E390 := E390 + 1;
      Timepatternfilters.Timepatternfilter_Test_Data'Elab_Spec;
      Timepatternfilters.Timepatternfilter_Test_Data'Elab_Body;
      E392 := E392 + 1;
      Timepatternfilters.Timepatternfilter_Test_Data.Timepatternfilter_Tests'Elab_Spec;
      E394 := E394 + 1;
      Timepatternfilters.Timepatternfilter_Test_Data.Timepatternfilter_Tests.Suite'Elab_Body;
      E396 := E396 + 1;
      timerangefilters'elab_spec;
      E398 := E398 + 1;
      Timerangefilters.Timerangefilter_Test_Data'Elab_Spec;
      Timerangefilters.Timerangefilter_Test_Data'Elab_Body;
      E400 := E400 + 1;
      Timerangefilters.Timerangefilter_Test_Data.Timerangefilter_Tests'Elab_Spec;
      E402 := E402 + 1;
      Timerangefilters.Timerangefilter_Test_Data.Timerangefilter_Tests.Suite'Elab_Body;
      E404 := E404 + 1;
      Gnattest_Main_Suite'Elab_Body;
      E194 := E194 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_test_runner");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   M:\z_Agil\JpegByDate\bin\globals.o
   --   M:\z_Agil\JpegByDate\test\gnattest\gnattest_generated.o
   --   M:\z_Agil\JpegByDate\test\gnattest\exifparsers-exifparser_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\exifparsers-exifparser_test_data-exifparser_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\exifparsers-exifparser_test_data-exifparser_tests-suite.o
   --   M:\z_Agil\JpegByDate\test\gnattest\test_runner.o
   --   M:\z_Agil\JpegByDate\bin\outputs.o
   --   M:\z_Agil\JpegByDate\bin\ConsoleOutputs.o
   --   M:\z_Agil\JpegByDate\test\gnattest\consoleoutputs-consoleoutput_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\consoleoutputs-consoleoutput_test_data-consoleoutput_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\consoleoutputs-consoleoutput_test_data-consoleoutput_tests-suite.o
   --   M:\z_Agil\JpegByDate\bin\Parameters.o
   --   M:\z_Agil\JpegByDate\bin\Filters.o
   --   M:\z_Agil\JpegByDate\bin\EXIFFilters.o
   --   M:\z_Agil\JpegByDate\bin\DatePatternFilters.o
   --   M:\z_Agil\JpegByDate\test\gnattest\datepatternfilters-datepatternfilter_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\datepatternfilters-datepatternfilter_test_data-datepatternfilter_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\datepatternfilters-datepatternfilter_test_data-datepatternfilter_tests-suite.o
   --   M:\z_Agil\JpegByDate\bin\DateRangeFilters.o
   --   M:\z_Agil\JpegByDate\test\gnattest\daterangefilters-daterangefilter_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\daterangefilters-daterangefilter_test_data-daterangefilter_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\daterangefilters-daterangefilter_test_data-daterangefilter_tests-suite.o
   --   M:\z_Agil\JpegByDate\bin\FileFilters.o
   --   M:\z_Agil\JpegByDate\bin\FileExtensionFilters.o
   --   M:\z_Agil\JpegByDate\test\gnattest\fileextensionfilters-fileextensionfilter_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\fileextensionfilters-fileextensionfilter_test_data-fileextensionfilter_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\fileextensionfilters-fileextensionfilter_test_data-fileextensionfilter_tests-suite.o
   --   M:\z_Agil\JpegByDate\bin\FileListers.o
   --   M:\z_Agil\JpegByDate\test\gnattest\filehandlers-filehandler_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\filehandlers-filehandler_test_data-filehandler_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\filehandlers-filehandler_test_data-filehandler_tests-suite.o
   --   M:\z_Agil\JpegByDate\test\gnattest\filelisters-filelister_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\filelisters-filelister_test_data-filelister_tests.o
   --   M:\z_Agil\JpegByDate\bin\FileNameFilters.o
   --   M:\z_Agil\JpegByDate\test\gnattest\filenamefilters-filenamefilter_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\filenamefilters-filenamefilter_test_data-filenamefilter_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\filenamefilters-filenamefilter_test_data-filenamefilter_tests-suite.o
   --   M:\z_Agil\JpegByDate\bin\FileSizeFilters.o
   --   M:\z_Agil\JpegByDate\test\gnattest\filesizefilters-filesizefilter_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\filesizefilters-filesizefilter_test_data-filesizefilter_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\filesizefilters-filesizefilter_test_data-filesizefilter_tests-suite.o
   --   M:\z_Agil\JpegByDate\bin\FilesystemListers.o
   --   M:\z_Agil\JpegByDate\test\gnattest\filesystemlisters-filesystemlister_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\filesystemlisters-filesystemlister_test_data-filesystemlister_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\filesystemlisters-filesystemlister_test_data-filesystemlister_tests-suite.o
   --   M:\z_Agil\JpegByDate\bin\ImageSizeFilters.o
   --   M:\z_Agil\JpegByDate\test\gnattest\imagesizefilters-imagesizefilter_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\imagesizefilters-imagesizefilter_test_data-imagesizefilter_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\imagesizefilters-imagesizefilter_test_data-imagesizefilter_tests-suite.o
   --   M:\z_Agil\JpegByDate\bin\inputs.o
   --   M:\z_Agil\JpegByDate\bin\CommandlineParsers.o
   --   M:\z_Agil\JpegByDate\test\gnattest\commandlineparsers-commandlineparser_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\commandlineparsers-commandlineparser_test_data-commandlineparser_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\commandlineparsers-commandlineparser_test_data-commandlineparser_tests-suite.o
   --   M:\z_Agil\JpegByDate\test\gnattest\parameters-parameter_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\parameters-parameter_test_data-parameter_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\parameters-parameter_test_data-parameter_tests-suite.o
   --   M:\z_Agil\JpegByDate\bin\FileHandlers.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-jpegpictures-test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-jpegpictures-test_data-tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-jpegpictures-test_data-tests-suite.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-picture_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-picture_test_data-picture_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-jpegpictures-jpegpicture_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-jpegpictures-jpegpicture_test_data-jpegpicture_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-jpegpictures-jpegpicture_test_data-jpegpicture_tests-suite.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-test_data-tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-test_data-tests-suite.o
   --   M:\z_Agil\JpegByDate\bin\Pictures-TiffPictures.o
   --   M:\z_Agil\JpegByDate\bin\Pictures-JpegPictures.o
   --   M:\z_Agil\JpegByDate\bin\Pictures.o
   --   M:\z_Agil\JpegByDate\bin\EXIFParsers.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-tiffpictures-test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-tiffpictures-test_data-tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-tiffpictures-test_data-tests-suite.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-tiffpictures-tiffpicture_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-tiffpictures-tiffpicture_test_data-tiffpicture_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\pictures-tiffpictures-tiffpicture_test_data-tiffpicture_tests-suite.o
   --   M:\z_Agil\JpegByDate\bin\TimePatternFilters.o
   --   M:\z_Agil\JpegByDate\test\gnattest\timepatternfilters-timepatternfilter_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\timepatternfilters-timepatternfilter_test_data-timepatternfilter_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\timepatternfilters-timepatternfilter_test_data-timepatternfilter_tests-suite.o
   --   M:\z_Agil\JpegByDate\bin\TimeRangeFilters.o
   --   M:\z_Agil\JpegByDate\test\gnattest\timerangefilters-timerangefilter_test_data.o
   --   M:\z_Agil\JpegByDate\test\gnattest\timerangefilters-timerangefilter_test_data-timerangefilter_tests.o
   --   M:\z_Agil\JpegByDate\test\gnattest\timerangefilters-timerangefilter_test_data-timerangefilter_tests-suite.o
   --   M:\z_Agil\JpegByDate\test\gnattest\gnattest_main_suite.o
   --   -LM:\z_Agil\JpegByDate\test\gnattest\
   --   -LM:\z_Agil\JpegByDate\test\gnattest\
   --   -LC:\gnat\2016\lib\aunit\
   --   -LM:\z_Agil\JpegByDate\bin\
   --   -LC:/gnat/2016/lib/gcc/i686-pc-mingw32/4.9.4/adalib/
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
