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
   E308 : Short_Integer; pragma Import (Ada, E308, "ada__numerics_E");
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
   E296 : Short_Integer; pragma Import (Ada, E296, "ada__calendar__time_zones_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "gnat__directory_operations_E");
   E222 : Short_Integer; pragma Import (Ada, E222, "system__assertions_E");
   E313 : Short_Integer; pragma Import (Ada, E313, "system__direct_io_E");
   E059 : Short_Integer; pragma Import (Ada, E059, "system__object_reader_E");
   E039 : Short_Integer; pragma Import (Ada, E039, "system__dwarf_lines_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "system__pool_global_E");
   E009 : Short_Integer; pragma Import (Ada, E009, "system__secondary_stack_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "ada__strings__unbounded_E");
   E292 : Short_Integer; pragma Import (Ada, E292, "ada__directories_E");
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
   E250 : Short_Integer; pragma Import (Ada, E250, "exifparsers_E");
   E274 : Short_Integer; pragma Import (Ada, E274, "exifparsers__exifparser_test_data_E");
   E276 : Short_Integer; pragma Import (Ada, E276, "exifparsers__exifparser_test_data__exifparser_tests_E");
   E278 : Short_Integer; pragma Import (Ada, E278, "exifparsers__exifparser_test_data__exifparser_tests__suite_E");
   E194 : Short_Integer; pragma Import (Ada, E194, "gnattest_main_suite_E");
   E206 : Short_Integer; pragma Import (Ada, E206, "outputs_E");
   E228 : Short_Integer; pragma Import (Ada, E228, "consoleoutputs_E");
   E230 : Short_Integer; pragma Import (Ada, E230, "consoleoutputs__consoleoutput_test_data_E");
   E232 : Short_Integer; pragma Import (Ada, E232, "consoleoutputs__consoleoutput_test_data__consoleoutput_tests_E");
   E234 : Short_Integer; pragma Import (Ada, E234, "consoleoutputs__consoleoutput_test_data__consoleoutput_tests__suite_E");
   E236 : Short_Integer; pragma Import (Ada, E236, "csvoutputs_E");
   E239 : Short_Integer; pragma Import (Ada, E239, "outputs__output_test_data_E");
   E240 : Short_Integer; pragma Import (Ada, E240, "outputs__output_test_data__output_tests_E");
   E238 : Short_Integer; pragma Import (Ada, E238, "csvoutputs__csvoutput_test_data_E");
   E242 : Short_Integer; pragma Import (Ada, E242, "csvoutputs__csvoutput_test_data__csvoutput_tests_E");
   E244 : Short_Integer; pragma Import (Ada, E244, "csvoutputs__csvoutput_test_data__csvoutput_tests__suite_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "parameters_E");
   E258 : Short_Integer; pragma Import (Ada, E258, "filters_E");
   E248 : Short_Integer; pragma Import (Ada, E248, "exiffilters_E");
   E246 : Short_Integer; pragma Import (Ada, E246, "datepatternfilters_E");
   E260 : Short_Integer; pragma Import (Ada, E260, "datepatternfilters__datepatternfilter_test_data_E");
   E262 : Short_Integer; pragma Import (Ada, E262, "datepatternfilters__datepatternfilter_test_data__datepatternfilter_tests_E");
   E264 : Short_Integer; pragma Import (Ada, E264, "datepatternfilters__datepatternfilter_test_data__datepatternfilter_tests__suite_E");
   E266 : Short_Integer; pragma Import (Ada, E266, "daterangefilters_E");
   E268 : Short_Integer; pragma Import (Ada, E268, "daterangefilters__daterangefilter_test_data_E");
   E270 : Short_Integer; pragma Import (Ada, E270, "daterangefilters__daterangefilter_test_data__daterangefilter_tests_E");
   E272 : Short_Integer; pragma Import (Ada, E272, "daterangefilters__daterangefilter_test_data__daterangefilter_tests__suite_E");
   E282 : Short_Integer; pragma Import (Ada, E282, "filefilters_E");
   E280 : Short_Integer; pragma Import (Ada, E280, "fileextensionfilters_E");
   E284 : Short_Integer; pragma Import (Ada, E284, "fileextensionfilters__fileextensionfilter_test_data_E");
   E286 : Short_Integer; pragma Import (Ada, E286, "fileextensionfilters__fileextensionfilter_test_data__fileextensionfilter_tests_E");
   E288 : Short_Integer; pragma Import (Ada, E288, "fileextensionfilters__fileextensionfilter_test_data__fileextensionfilter_tests__suite_E");
   E319 : Short_Integer; pragma Import (Ada, E319, "filelisters_E");
   E290 : Short_Integer; pragma Import (Ada, E290, "filehandlers_E");
   E321 : Short_Integer; pragma Import (Ada, E321, "filehandlers__filehandler_test_data_E");
   E323 : Short_Integer; pragma Import (Ada, E323, "filehandlers__filehandler_test_data__filehandler_tests_E");
   E325 : Short_Integer; pragma Import (Ada, E325, "filehandlers__filehandler_test_data__filehandler_tests__suite_E");
   E346 : Short_Integer; pragma Import (Ada, E346, "filelisters__filelister_test_data_E");
   E347 : Short_Integer; pragma Import (Ada, E347, "filelisters__filelister_test_data__filelister_tests_E");
   E327 : Short_Integer; pragma Import (Ada, E327, "filenamefilters_E");
   E329 : Short_Integer; pragma Import (Ada, E329, "filenamefilters__filenamefilter_test_data_E");
   E331 : Short_Integer; pragma Import (Ada, E331, "filenamefilters__filenamefilter_test_data__filenamefilter_tests_E");
   E333 : Short_Integer; pragma Import (Ada, E333, "filenamefilters__filenamefilter_test_data__filenamefilter_tests__suite_E");
   E335 : Short_Integer; pragma Import (Ada, E335, "filesizefilters_E");
   E337 : Short_Integer; pragma Import (Ada, E337, "filesizefilters__filesizefilter_test_data_E");
   E339 : Short_Integer; pragma Import (Ada, E339, "filesizefilters__filesizefilter_test_data__filesizefilter_tests_E");
   E341 : Short_Integer; pragma Import (Ada, E341, "filesizefilters__filesizefilter_test_data__filesizefilter_tests__suite_E");
   E343 : Short_Integer; pragma Import (Ada, E343, "filesystemlisters_E");
   E345 : Short_Integer; pragma Import (Ada, E345, "filesystemlisters__filesystemlister_test_data_E");
   E349 : Short_Integer; pragma Import (Ada, E349, "filesystemlisters__filesystemlister_test_data__filesystemlister_tests_E");
   E351 : Short_Integer; pragma Import (Ada, E351, "filesystemlisters__filesystemlister_test_data__filesystemlister_tests__suite_E");
   E353 : Short_Integer; pragma Import (Ada, E353, "imagesizefilters_E");
   E355 : Short_Integer; pragma Import (Ada, E355, "imagesizefilters__imagesizefilter_test_data_E");
   E357 : Short_Integer; pragma Import (Ada, E357, "imagesizefilters__imagesizefilter_test_data__imagesizefilter_tests_E");
   E359 : Short_Integer; pragma Import (Ada, E359, "imagesizefilters__imagesizefilter_test_data__imagesizefilter_tests__suite_E");
   E205 : Short_Integer; pragma Import (Ada, E205, "inputs_E");
   E196 : Short_Integer; pragma Import (Ada, E196, "commandlineparsers_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "commandlineparsers__commandlineparser_test_data_E");
   E220 : Short_Integer; pragma Import (Ada, E220, "commandlineparsers__commandlineparser_test_data__commandlineparser_tests_E");
   E224 : Short_Integer; pragma Import (Ada, E224, "commandlineparsers__commandlineparser_test_data__commandlineparser_tests__suite_E");
   E361 : Short_Integer; pragma Import (Ada, E361, "parameters__parameter_test_data_E");
   E363 : Short_Integer; pragma Import (Ada, E363, "parameters__parameter_test_data__parameter_tests_E");
   E365 : Short_Integer; pragma Import (Ada, E365, "parameters__parameter_test_data__parameter_tests__suite_E");
   E252 : Short_Integer; pragma Import (Ada, E252, "pictures_E");
   E254 : Short_Integer; pragma Import (Ada, E254, "pictures__jpegpictures_E");
   E376 : Short_Integer; pragma Import (Ada, E376, "pictures__jpegpictures__test_data_E");
   E378 : Short_Integer; pragma Import (Ada, E378, "pictures__jpegpictures__test_data__tests_E");
   E380 : Short_Integer; pragma Import (Ada, E380, "pictures__jpegpictures__test_data__tests__suite_E");
   E368 : Short_Integer; pragma Import (Ada, E368, "pictures__picture_test_data_E");
   E370 : Short_Integer; pragma Import (Ada, E370, "pictures__picture_test_data__picture_tests_E");
   E367 : Short_Integer; pragma Import (Ada, E367, "pictures__jpegpictures__jpegpicture_test_data_E");
   E372 : Short_Integer; pragma Import (Ada, E372, "pictures__jpegpictures__jpegpicture_test_data__jpegpicture_tests_E");
   E374 : Short_Integer; pragma Import (Ada, E374, "pictures__jpegpictures__jpegpicture_test_data__jpegpicture_tests__suite_E");
   E382 : Short_Integer; pragma Import (Ada, E382, "pictures__test_data_E");
   E384 : Short_Integer; pragma Import (Ada, E384, "pictures__test_data__tests_E");
   E386 : Short_Integer; pragma Import (Ada, E386, "pictures__test_data__tests__suite_E");
   E256 : Short_Integer; pragma Import (Ada, E256, "pictures__tiffpictures_E");
   E388 : Short_Integer; pragma Import (Ada, E388, "pictures__tiffpictures__test_data_E");
   E390 : Short_Integer; pragma Import (Ada, E390, "pictures__tiffpictures__test_data__tests_E");
   E392 : Short_Integer; pragma Import (Ada, E392, "pictures__tiffpictures__test_data__tests__suite_E");
   E394 : Short_Integer; pragma Import (Ada, E394, "pictures__tiffpictures__tiffpicture_test_data_E");
   E396 : Short_Integer; pragma Import (Ada, E396, "pictures__tiffpictures__tiffpicture_test_data__tiffpicture_tests_E");
   E398 : Short_Integer; pragma Import (Ada, E398, "pictures__tiffpictures__tiffpicture_test_data__tiffpicture_tests__suite_E");
   E400 : Short_Integer; pragma Import (Ada, E400, "timepatternfilters_E");
   E402 : Short_Integer; pragma Import (Ada, E402, "timepatternfilters__timepatternfilter_test_data_E");
   E404 : Short_Integer; pragma Import (Ada, E404, "timepatternfilters__timepatternfilter_test_data__timepatternfilter_tests_E");
   E406 : Short_Integer; pragma Import (Ada, E406, "timepatternfilters__timepatternfilter_test_data__timepatternfilter_tests__suite_E");
   E408 : Short_Integer; pragma Import (Ada, E408, "timerangefilters_E");
   E410 : Short_Integer; pragma Import (Ada, E410, "timerangefilters__timerangefilter_test_data_E");
   E412 : Short_Integer; pragma Import (Ada, E412, "timerangefilters__timerangefilter_test_data__timerangefilter_tests_E");
   E414 : Short_Integer; pragma Import (Ada, E414, "timerangefilters__timerangefilter_test_data__timerangefilter_tests__suite_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "timerangefilters__timerangefilter_test_data__timerangefilter_tests__suite__finalize_body");
      begin
         E414 := E414 - 1;
         F1;
      end;
      E412 := E412 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "timerangefilters__timerangefilter_test_data__timerangefilter_tests__finalize_spec");
      begin
         F2;
      end;
      E410 := E410 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "timerangefilters__timerangefilter_test_data__finalize_spec");
      begin
         F3;
      end;
      E408 := E408 - 1;
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
         E406 := E406 - 1;
         F5;
      end;
      E404 := E404 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "timepatternfilters__timepatternfilter_test_data__timepatternfilter_tests__finalize_spec");
      begin
         F6;
      end;
      E402 := E402 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "timepatternfilters__timepatternfilter_test_data__finalize_spec");
      begin
         F7;
      end;
      E400 := E400 - 1;
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
         E398 := E398 - 1;
         F9;
      end;
      E396 := E396 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "pictures__tiffpictures__tiffpicture_test_data__tiffpicture_tests__finalize_spec");
      begin
         F10;
      end;
      E394 := E394 - 1;
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
         E392 := E392 - 1;
         F12;
      end;
      E390 := E390 - 1;
      declare
         procedure F13;
         pragma Import (Ada, F13, "pictures__tiffpictures__test_data__tests__finalize_spec");
      begin
         F13;
      end;
      E388 := E388 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "pictures__tiffpictures__test_data__finalize_spec");
      begin
         F14;
      end;
      E250 := E250 - 1;
      declare
         procedure F15;
         pragma Import (Ada, F15, "pictures__jpegpictures__finalize_body");
      begin
         E254 := E254 - 1;
         F15;
      end;
      declare
         procedure F16;
         pragma Import (Ada, F16, "pictures__tiffpictures__finalize_body");
      begin
         E256 := E256 - 1;
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
         E386 := E386 - 1;
         F18;
      end;
      E384 := E384 - 1;
      declare
         procedure F19;
         pragma Import (Ada, F19, "pictures__test_data__tests__finalize_spec");
      begin
         F19;
      end;
      E382 := E382 - 1;
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
         E374 := E374 - 1;
         F21;
      end;
      E372 := E372 - 1;
      declare
         procedure F22;
         pragma Import (Ada, F22, "pictures__jpegpictures__jpegpicture_test_data__jpegpicture_tests__finalize_spec");
      begin
         F22;
      end;
      E367 := E367 - 1;
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
         E368 := E368 - 1;
         F24;
      end;
      declare
         procedure F25;
         pragma Import (Ada, F25, "pictures__jpegpictures__test_data__tests__suite__finalize_body");
      begin
         E380 := E380 - 1;
         F25;
      end;
      E378 := E378 - 1;
      declare
         procedure F26;
         pragma Import (Ada, F26, "pictures__jpegpictures__test_data__tests__finalize_spec");
      begin
         F26;
      end;
      E376 := E376 - 1;
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
      E290 := E290 - 1;
      declare
         procedure F29;
         pragma Import (Ada, F29, "parameters__parameter_test_data__parameter_tests__suite__finalize_body");
      begin
         E365 := E365 - 1;
         F29;
      end;
      E363 := E363 - 1;
      declare
         procedure F30;
         pragma Import (Ada, F30, "parameters__parameter_test_data__parameter_tests__finalize_spec");
      begin
         F30;
      end;
      E361 := E361 - 1;
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
         E359 := E359 - 1;
         F36;
      end;
      E357 := E357 - 1;
      declare
         procedure F37;
         pragma Import (Ada, F37, "imagesizefilters__imagesizefilter_test_data__imagesizefilter_tests__finalize_spec");
      begin
         F37;
      end;
      E355 := E355 - 1;
      declare
         procedure F38;
         pragma Import (Ada, F38, "imagesizefilters__imagesizefilter_test_data__finalize_spec");
      begin
         F38;
      end;
      E353 := E353 - 1;
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
         E351 := E351 - 1;
         F40;
      end;
      E349 := E349 - 1;
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
         E345 := E345 - 1;
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
         E343 := E343 - 1;
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
         E341 := E341 - 1;
         F46;
      end;
      E339 := E339 - 1;
      declare
         procedure F47;
         pragma Import (Ada, F47, "filesizefilters__filesizefilter_test_data__filesizefilter_tests__finalize_spec");
      begin
         F47;
      end;
      E337 := E337 - 1;
      declare
         procedure F48;
         pragma Import (Ada, F48, "filesizefilters__filesizefilter_test_data__finalize_spec");
      begin
         F48;
      end;
      E335 := E335 - 1;
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
         E333 := E333 - 1;
         F50;
      end;
      E331 := E331 - 1;
      declare
         procedure F51;
         pragma Import (Ada, F51, "filenamefilters__filenamefilter_test_data__filenamefilter_tests__finalize_spec");
      begin
         F51;
      end;
      E329 := E329 - 1;
      declare
         procedure F52;
         pragma Import (Ada, F52, "filenamefilters__filenamefilter_test_data__finalize_spec");
      begin
         F52;
      end;
      E327 := E327 - 1;
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
         E346 := E346 - 1;
         F54;
      end;
      declare
         procedure F55;
         pragma Import (Ada, F55, "filehandlers__filehandler_test_data__filehandler_tests__suite__finalize_body");
      begin
         E325 := E325 - 1;
         F55;
      end;
      E323 := E323 - 1;
      declare
         procedure F56;
         pragma Import (Ada, F56, "filehandlers__filehandler_test_data__filehandler_tests__finalize_spec");
      begin
         F56;
      end;
      E321 := E321 - 1;
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
         E288 := E288 - 1;
         F59;
      end;
      E286 := E286 - 1;
      declare
         procedure F60;
         pragma Import (Ada, F60, "fileextensionfilters__fileextensionfilter_test_data__fileextensionfilter_tests__finalize_spec");
      begin
         F60;
      end;
      E284 := E284 - 1;
      declare
         procedure F61;
         pragma Import (Ada, F61, "fileextensionfilters__fileextensionfilter_test_data__finalize_spec");
      begin
         F61;
      end;
      E280 := E280 - 1;
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
         E272 := E272 - 1;
         F63;
      end;
      E270 := E270 - 1;
      declare
         procedure F64;
         pragma Import (Ada, F64, "daterangefilters__daterangefilter_test_data__daterangefilter_tests__finalize_spec");
      begin
         F64;
      end;
      E268 := E268 - 1;
      declare
         procedure F65;
         pragma Import (Ada, F65, "daterangefilters__daterangefilter_test_data__finalize_spec");
      begin
         F65;
      end;
      E266 := E266 - 1;
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
         E264 := E264 - 1;
         F67;
      end;
      E262 := E262 - 1;
      declare
         procedure F68;
         pragma Import (Ada, F68, "datepatternfilters__datepatternfilter_test_data__datepatternfilter_tests__finalize_spec");
      begin
         F68;
      end;
      E260 := E260 - 1;
      declare
         procedure F69;
         pragma Import (Ada, F69, "datepatternfilters__datepatternfilter_test_data__finalize_spec");
      begin
         F69;
      end;
      E246 := E246 - 1;
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
         pragma Import (Ada, F73, "csvoutputs__csvoutput_test_data__csvoutput_tests__suite__finalize_body");
      begin
         E244 := E244 - 1;
         F73;
      end;
      E242 := E242 - 1;
      declare
         procedure F74;
         pragma Import (Ada, F74, "csvoutputs__csvoutput_test_data__csvoutput_tests__finalize_spec");
      begin
         F74;
      end;
      E238 := E238 - 1;
      declare
         procedure F75;
         pragma Import (Ada, F75, "csvoutputs__csvoutput_test_data__finalize_spec");
      begin
         F75;
      end;
      declare
         procedure F76;
         pragma Import (Ada, F76, "outputs__output_test_data__finalize_spec");
      begin
         E239 := E239 - 1;
         F76;
      end;
      E236 := E236 - 1;
      declare
         procedure F77;
         pragma Import (Ada, F77, "csvoutputs__finalize_spec");
      begin
         F77;
      end;
      declare
         procedure F78;
         pragma Import (Ada, F78, "consoleoutputs__consoleoutput_test_data__consoleoutput_tests__suite__finalize_body");
      begin
         E234 := E234 - 1;
         F78;
      end;
      E232 := E232 - 1;
      declare
         procedure F79;
         pragma Import (Ada, F79, "consoleoutputs__consoleoutput_test_data__consoleoutput_tests__finalize_spec");
      begin
         F79;
      end;
      E230 := E230 - 1;
      declare
         procedure F80;
         pragma Import (Ada, F80, "consoleoutputs__consoleoutput_test_data__finalize_spec");
      begin
         F80;
      end;
      E228 := E228 - 1;
      declare
         procedure F81;
         pragma Import (Ada, F81, "consoleoutputs__finalize_spec");
      begin
         F81;
      end;
      declare
         procedure F82;
         pragma Import (Ada, F82, "exifparsers__exifparser_test_data__exifparser_tests__suite__finalize_body");
      begin
         E278 := E278 - 1;
         F82;
      end;
      E276 := E276 - 1;
      declare
         procedure F83;
         pragma Import (Ada, F83, "exifparsers__exifparser_test_data__exifparser_tests__finalize_spec");
      begin
         F83;
      end;
      E274 := E274 - 1;
      declare
         procedure F84;
         pragma Import (Ada, F84, "exifparsers__exifparser_test_data__finalize_spec");
      begin
         F84;
      end;
      declare
         procedure F85;
         pragma Import (Ada, F85, "exifparsers__finalize_spec");
      begin
         F85;
      end;
      E152 := E152 - 1;
      declare
         procedure F86;
         pragma Import (Ada, F86, "aunit__test_suites__finalize_spec");
      begin
         F86;
      end;
      E218 := E218 - 1;
      declare
         procedure F87;
         pragma Import (Ada, F87, "aunit__test_fixtures__finalize_spec");
      begin
         F87;
      end;
      E099 := E099 - 1;
      E101 := E101 - 1;
      declare
         procedure F88;
         pragma Import (Ada, F88, "aunit__simple_test_cases__finalize_spec");
      begin
         F88;
      end;
      E144 := E144 - 1;
      declare
         procedure F89;
         pragma Import (Ada, F89, "aunit__reporter__gnattest__finalize_spec");
      begin
         F89;
      end;
      E103 := E103 - 1;
      declare
         procedure F90;
         pragma Import (Ada, F90, "aunit__assertions__finalize_spec");
      begin
         F90;
      end;
      E110 := E110 - 1;
      declare
         procedure F91;
         pragma Import (Ada, F91, "aunit__test_results__finalize_spec");
      begin
         F91;
      end;
      declare
         procedure F92;
         pragma Import (Ada, F92, "aunit__test_filters__finalize_spec");
      begin
         F92;
      end;
      declare
         procedure F93;
         pragma Import (Ada, F93, "aunit__tests__finalize_spec");
      begin
         E120 := E120 - 1;
         F93;
      end;
      E173 := E173 - 1;
      declare
         procedure F94;
         pragma Import (Ada, F94, "ada__text_io__finalize_spec");
      begin
         F94;
      end;
      E292 := E292 - 1;
      E190 := E190 - 1;
      declare
         procedure F95;
         pragma Import (Ada, F95, "system__regexp__finalize_spec");
      begin
         F95;
      end;
      declare
         procedure F96;
         pragma Import (Ada, F96, "ada__directories__finalize_spec");
      begin
         F96;
      end;
      E156 := E156 - 1;
      declare
         procedure F97;
         pragma Import (Ada, F97, "ada__strings__unbounded__finalize_spec");
      begin
         F97;
      end;
      declare
         procedure F98;
         pragma Import (Ada, F98, "system__file_io__finalize_body");
      begin
         E175 := E175 - 1;
         F98;
      end;
      E122 := E122 - 1;
      E164 := E164 - 1;
      E134 := E134 - 1;
      declare
         procedure F99;
         pragma Import (Ada, F99, "system__pool_global__finalize_spec");
      begin
         F99;
      end;
      E313 := E313 - 1;
      declare
         procedure F100;
         pragma Import (Ada, F100, "system__direct_io__finalize_spec");
      begin
         F100;
      end;
      declare
         procedure F101;
         pragma Import (Ada, F101, "system__storage_pools__subpools__finalize_spec");
      begin
         F101;
      end;
      declare
         procedure F102;
         pragma Import (Ada, F102, "system__finalization_masters__finalize_spec");
      begin
         F102;
      end;
      E212 := E212 - 1;
      declare
         procedure F103;
         pragma Import (Ada, F103, "ada__streams__stream_io__finalize_spec");
      begin
         F103;
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
      E308 := E308 + 1;
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
      E296 := E296 + 1;
      Gnat.Directory_Operations'Elab_Spec;
      System.Assertions'Elab_Spec;
      E222 := E222 + 1;
      System.Direct_Io'Elab_Spec;
      E313 := E313 + 1;
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
      E292 := E292 + 1;
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
      E274 := E274 + 1;
      Exifparsers.Exifparser_Test_Data.Exifparser_Tests'Elab_Spec;
      E276 := E276 + 1;
      Exifparsers.Exifparser_Test_Data.Exifparser_Tests.Suite'Elab_Body;
      E278 := E278 + 1;
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
      csvoutputs'elab_spec;
      E236 := E236 + 1;
      Outputs.Output_Test_Data'Elab_Spec;
      E239 := E239 + 1;
      Outputs.Output_Test_Data.Output_Tests'Elab_Spec;
      E240 := E240 + 1;
      Csvoutputs.Csvoutput_Test_Data'Elab_Spec;
      Csvoutputs.Csvoutput_Test_Data'Elab_Body;
      E238 := E238 + 1;
      Csvoutputs.Csvoutput_Test_Data.Csvoutput_Tests'Elab_Spec;
      E242 := E242 + 1;
      Csvoutputs.Csvoutput_Test_Data.Csvoutput_Tests.Suite'Elab_Body;
      E244 := E244 + 1;
      Parameters'Elab_Spec;
      Parameters'Elab_Body;
      E208 := E208 + 1;
      E258 := E258 + 1;
      Exiffilters'Elab_Spec;
      E248 := E248 + 1;
      datepatternfilters'elab_spec;
      E246 := E246 + 1;
      Datepatternfilters.Datepatternfilter_Test_Data'Elab_Spec;
      Datepatternfilters.Datepatternfilter_Test_Data'Elab_Body;
      E260 := E260 + 1;
      Datepatternfilters.Datepatternfilter_Test_Data.Datepatternfilter_Tests'Elab_Spec;
      E262 := E262 + 1;
      Datepatternfilters.Datepatternfilter_Test_Data.Datepatternfilter_Tests.Suite'Elab_Body;
      E264 := E264 + 1;
      daterangefilters'elab_spec;
      E266 := E266 + 1;
      Daterangefilters.Daterangefilter_Test_Data'Elab_Spec;
      Daterangefilters.Daterangefilter_Test_Data'Elab_Body;
      E268 := E268 + 1;
      Daterangefilters.Daterangefilter_Test_Data.Daterangefilter_Tests'Elab_Spec;
      E270 := E270 + 1;
      Daterangefilters.Daterangefilter_Test_Data.Daterangefilter_Tests.Suite'Elab_Body;
      E272 := E272 + 1;
      Filefilters'Elab_Spec;
      E282 := E282 + 1;
      fileextensionfilters'elab_spec;
      E280 := E280 + 1;
      Fileextensionfilters.Fileextensionfilter_Test_Data'Elab_Spec;
      Fileextensionfilters.Fileextensionfilter_Test_Data'Elab_Body;
      E284 := E284 + 1;
      Fileextensionfilters.Fileextensionfilter_Test_Data.Fileextensionfilter_Tests'Elab_Spec;
      E286 := E286 + 1;
      Fileextensionfilters.Fileextensionfilter_Test_Data.Fileextensionfilter_Tests.Suite'Elab_Body;
      E288 := E288 + 1;
      filelisters'elab_spec;
      E319 := E319 + 1;
      filehandlers'elab_spec;
      Filehandlers.Filehandler_Test_Data'Elab_Spec;
      Filehandlers.Filehandler_Test_Data'Elab_Body;
      E321 := E321 + 1;
      Filehandlers.Filehandler_Test_Data.Filehandler_Tests'Elab_Spec;
      E323 := E323 + 1;
      Filehandlers.Filehandler_Test_Data.Filehandler_Tests.Suite'Elab_Body;
      E325 := E325 + 1;
      Filelisters.Filelister_Test_Data'Elab_Spec;
      E346 := E346 + 1;
      Filelisters.Filelister_Test_Data.Filelister_Tests'Elab_Spec;
      E347 := E347 + 1;
      filenamefilters'elab_spec;
      E327 := E327 + 1;
      Filenamefilters.Filenamefilter_Test_Data'Elab_Spec;
      Filenamefilters.Filenamefilter_Test_Data'Elab_Body;
      E329 := E329 + 1;
      Filenamefilters.Filenamefilter_Test_Data.Filenamefilter_Tests'Elab_Spec;
      E331 := E331 + 1;
      Filenamefilters.Filenamefilter_Test_Data.Filenamefilter_Tests.Suite'Elab_Body;
      E333 := E333 + 1;
      filesizefilters'elab_spec;
      E335 := E335 + 1;
      Filesizefilters.Filesizefilter_Test_Data'Elab_Spec;
      Filesizefilters.Filesizefilter_Test_Data'Elab_Body;
      E337 := E337 + 1;
      Filesizefilters.Filesizefilter_Test_Data.Filesizefilter_Tests'Elab_Spec;
      E339 := E339 + 1;
      Filesizefilters.Filesizefilter_Test_Data.Filesizefilter_Tests.Suite'Elab_Body;
      E341 := E341 + 1;
      filesystemlisters'elab_spec;
      filesystemlisters'elab_body;
      E343 := E343 + 1;
      Filesystemlisters.Filesystemlister_Test_Data'Elab_Spec;
      Filesystemlisters.Filesystemlister_Test_Data'Elab_Body;
      E345 := E345 + 1;
      Filesystemlisters.Filesystemlister_Test_Data.Filesystemlister_Tests'Elab_Spec;
      E349 := E349 + 1;
      Filesystemlisters.Filesystemlister_Test_Data.Filesystemlister_Tests.Suite'Elab_Body;
      E351 := E351 + 1;
      imagesizefilters'elab_spec;
      E353 := E353 + 1;
      Imagesizefilters.Imagesizefilter_Test_Data'Elab_Spec;
      Imagesizefilters.Imagesizefilter_Test_Data'Elab_Body;
      E355 := E355 + 1;
      Imagesizefilters.Imagesizefilter_Test_Data.Imagesizefilter_Tests'Elab_Spec;
      E357 := E357 + 1;
      Imagesizefilters.Imagesizefilter_Test_Data.Imagesizefilter_Tests.Suite'Elab_Body;
      E359 := E359 + 1;
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
      E361 := E361 + 1;
      Parameters.Parameter_Test_Data.Parameter_Tests'Elab_Spec;
      E363 := E363 + 1;
      Parameters.Parameter_Test_Data.Parameter_Tests.Suite'Elab_Body;
      E365 := E365 + 1;
      Pictures'Elab_Spec;
      E290 := E290 + 1;
      Pictures.Jpegpictures'Elab_Spec;
      Pictures.Jpegpictures.Test_Data'Elab_Spec;
      E376 := E376 + 1;
      Pictures.Jpegpictures.Test_Data.Tests'Elab_Spec;
      E378 := E378 + 1;
      Pictures.Jpegpictures.Test_Data.Tests.Suite'Elab_Body;
      E380 := E380 + 1;
      Pictures.Picture_Test_Data'Elab_Spec;
      E368 := E368 + 1;
      Pictures.Picture_Test_Data.Picture_Tests'Elab_Spec;
      E370 := E370 + 1;
      Pictures.Jpegpictures.Jpegpicture_Test_Data'Elab_Spec;
      Pictures.Jpegpictures.Jpegpicture_Test_Data'Elab_Body;
      E367 := E367 + 1;
      Pictures.Jpegpictures.Jpegpicture_Test_Data.Jpegpicture_Tests'Elab_Spec;
      E372 := E372 + 1;
      Pictures.Jpegpictures.Jpegpicture_Test_Data.Jpegpicture_Tests.Suite'Elab_Body;
      E374 := E374 + 1;
      Pictures.Test_Data'Elab_Spec;
      E382 := E382 + 1;
      Pictures.Test_Data.Tests'Elab_Spec;
      E384 := E384 + 1;
      Pictures.Test_Data.Tests.Suite'Elab_Body;
      E386 := E386 + 1;
      Pictures.Tiffpictures'Elab_Spec;
      Pictures.Tiffpictures'Elab_Body;
      E256 := E256 + 1;
      Pictures.Jpegpictures'Elab_Body;
      E254 := E254 + 1;
      E252 := E252 + 1;
      E250 := E250 + 1;
      Pictures.Tiffpictures.Test_Data'Elab_Spec;
      E388 := E388 + 1;
      Pictures.Tiffpictures.Test_Data.Tests'Elab_Spec;
      E390 := E390 + 1;
      Pictures.Tiffpictures.Test_Data.Tests.Suite'Elab_Body;
      E392 := E392 + 1;
      Pictures.Tiffpictures.Tiffpicture_Test_Data'Elab_Spec;
      Pictures.Tiffpictures.Tiffpicture_Test_Data'Elab_Body;
      E394 := E394 + 1;
      Pictures.Tiffpictures.Tiffpicture_Test_Data.Tiffpicture_Tests'Elab_Spec;
      E396 := E396 + 1;
      Pictures.Tiffpictures.Tiffpicture_Test_Data.Tiffpicture_Tests.Suite'Elab_Body;
      E398 := E398 + 1;
      timepatternfilters'elab_spec;
      E400 := E400 + 1;
      Timepatternfilters.Timepatternfilter_Test_Data'Elab_Spec;
      Timepatternfilters.Timepatternfilter_Test_Data'Elab_Body;
      E402 := E402 + 1;
      Timepatternfilters.Timepatternfilter_Test_Data.Timepatternfilter_Tests'Elab_Spec;
      E404 := E404 + 1;
      Timepatternfilters.Timepatternfilter_Test_Data.Timepatternfilter_Tests.Suite'Elab_Body;
      E406 := E406 + 1;
      timerangefilters'elab_spec;
      E408 := E408 + 1;
      Timerangefilters.Timerangefilter_Test_Data'Elab_Spec;
      Timerangefilters.Timerangefilter_Test_Data'Elab_Body;
      E410 := E410 + 1;
      Timerangefilters.Timerangefilter_Test_Data.Timerangefilter_Tests'Elab_Spec;
      E412 := E412 + 1;
      Timerangefilters.Timerangefilter_Test_Data.Timerangefilter_Tests.Suite'Elab_Body;
      E414 := E414 + 1;
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
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\globals.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\gnattest_generated.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\exifparsers-exifparser_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\exifparsers-exifparser_test_data-exifparser_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\exifparsers-exifparser_test_data-exifparser_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\test_runner.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\outputs.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\ConsoleOutputs.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\consoleoutputs-consoleoutput_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\consoleoutputs-consoleoutput_test_data-consoleoutput_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\consoleoutputs-consoleoutput_test_data-consoleoutput_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\CSVOutputs.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\outputs-output_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\outputs-output_test_data-output_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\csvoutputs-csvoutput_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\csvoutputs-csvoutput_test_data-csvoutput_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\csvoutputs-csvoutput_test_data-csvoutput_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\Parameters.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\Filters.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\EXIFFilters.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\DatePatternFilters.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\datepatternfilters-datepatternfilter_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\datepatternfilters-datepatternfilter_test_data-datepatternfilter_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\datepatternfilters-datepatternfilter_test_data-datepatternfilter_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\DateRangeFilters.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\daterangefilters-daterangefilter_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\daterangefilters-daterangefilter_test_data-daterangefilter_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\daterangefilters-daterangefilter_test_data-daterangefilter_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\FileFilters.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\FileExtensionFilters.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\fileextensionfilters-fileextensionfilter_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\fileextensionfilters-fileextensionfilter_test_data-fileextensionfilter_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\fileextensionfilters-fileextensionfilter_test_data-fileextensionfilter_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\FileListers.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\filehandlers-filehandler_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\filehandlers-filehandler_test_data-filehandler_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\filehandlers-filehandler_test_data-filehandler_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\filelisters-filelister_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\filelisters-filelister_test_data-filelister_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\FileNameFilters.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\filenamefilters-filenamefilter_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\filenamefilters-filenamefilter_test_data-filenamefilter_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\filenamefilters-filenamefilter_test_data-filenamefilter_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\FileSizeFilters.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\filesizefilters-filesizefilter_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\filesizefilters-filesizefilter_test_data-filesizefilter_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\filesizefilters-filesizefilter_test_data-filesizefilter_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\FilesystemListers.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\filesystemlisters-filesystemlister_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\filesystemlisters-filesystemlister_test_data-filesystemlister_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\filesystemlisters-filesystemlister_test_data-filesystemlister_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\ImageSizeFilters.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\imagesizefilters-imagesizefilter_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\imagesizefilters-imagesizefilter_test_data-imagesizefilter_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\imagesizefilters-imagesizefilter_test_data-imagesizefilter_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\inputs.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\CommandlineParsers.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\commandlineparsers-commandlineparser_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\commandlineparsers-commandlineparser_test_data-commandlineparser_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\commandlineparsers-commandlineparser_test_data-commandlineparser_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\parameters-parameter_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\parameters-parameter_test_data-parameter_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\parameters-parameter_test_data-parameter_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\FileHandlers.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-jpegpictures-test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-jpegpictures-test_data-tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-jpegpictures-test_data-tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-picture_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-picture_test_data-picture_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-jpegpictures-jpegpicture_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-jpegpictures-jpegpicture_test_data-jpegpicture_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-jpegpictures-jpegpicture_test_data-jpegpicture_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-test_data-tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-test_data-tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\Pictures-TiffPictures.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\Pictures-JpegPictures.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\Pictures.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\EXIFParsers.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-tiffpictures-test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-tiffpictures-test_data-tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-tiffpictures-test_data-tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-tiffpictures-tiffpicture_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-tiffpictures-tiffpicture_test_data-tiffpicture_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\pictures-tiffpictures-tiffpicture_test_data-tiffpicture_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\TimePatternFilters.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\timepatternfilters-timepatternfilter_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\timepatternfilters-timepatternfilter_test_data-timepatternfilter_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\timepatternfilters-timepatternfilter_test_data-timepatternfilter_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\bin\TimeRangeFilters.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\timerangefilters-timerangefilter_test_data.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\timerangefilters-timerangefilter_test_data-timerangefilter_tests.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\timerangefilters-timerangefilter_test_data-timerangefilter_tests-suite.o
   --   D:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\gnattest_main_suite.o
   --   -LD:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\
   --   -LD:\Users\Andi\Documents\GitHub\JpegByDate\test\gnattest\
   --   -LC:\gnat\2016\lib\aunit\
   --   -LD:\Users\Andi\Documents\GitHub\JpegByDate\bin\
   --   -LC:/gnat/2016/lib/gcc/i686-pc-mingw32/4.9.4/adalib/
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
