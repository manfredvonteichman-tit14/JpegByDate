--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Parameters.Parameter_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

package body Parameters.Parameter_Test_Data.Parameter_Tests is


--  begin read only
   procedure Test_create (Gnattest_T : in out Test_Parameter);
   procedure Test_create_b54415 (Gnattest_T : in out Test_Parameter) renames Test_create;
--  id:2.2/b544157c75988c40/create/1/0/
   procedure Test_create (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:12:4:create
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_create;
--  end read only


--  begin read only
   procedure Test_destroy (Gnattest_T : in out Test_Parameter);
   procedure Test_destroy_b24e53 (Gnattest_T : in out Test_Parameter) renames Test_destroy;
--  id:2.2/b24e535ec428ab7c/destroy/1/0/
   procedure Test_destroy (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:14:4:destroy
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_destroy;
--  end read only


--  begin read only
   procedure Test_setPath (Gnattest_T : in out Test_Parameter);
   procedure Test_setPath_faf547 (Gnattest_T : in out Test_Parameter) renames Test_setPath;
--  id:2.2/faf5476413c0662f/setPath/1/0/
   procedure Test_setPath (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:17:4:setPath
--  end read only

   begin
      setPath(Gnattest_T.Fixture, "/test/tess");
      AUnit.Assertions.Assert
        (getPath(Gnattest_T.Fixture) = "/test/tess",
         "Path wasnt set properly.");

--  begin read only
   end Test_setPath;
--  end read only


--  begin read only
   procedure Test_setPathRecursion (Gnattest_T : in out Test_Parameter);
   procedure Test_setPathRecursion_e324ed (Gnattest_T : in out Test_Parameter) renames Test_setPathRecursion;
--  id:2.2/e324edd919056ed7/setPathRecursion/1/0/
   procedure Test_setPathRecursion (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:18:4:setPathRecursion
--  end read only

   begin
      setPathRecursion(Gnattest_T.Fixture, True);
      AUnit.Assertions.Assert
        (getPathRecursion(Gnattest_T.Fixture),
         "PathRecursion wasnt set properly.");

--  begin read only
   end Test_setPathRecursion;
--  end read only


--  begin read only
   procedure Test_setFilePattern (Gnattest_T : in out Test_Parameter);
   procedure Test_setFilePattern_567c09 (Gnattest_T : in out Test_Parameter) renames Test_setFilePattern;
--  id:2.2/567c09668bce6565/setFilePattern/1/0/
   procedure Test_setFilePattern (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:19:4:setFilePattern
--  end read only

   begin
      setFilePattern(Gnattest_T.Fixture, "?.*test");
      AUnit.Assertions.Assert
        (getFilePattern(Gnattest_T.Fixture) = "?.*test",
         "FilePattern wasnt set properly.");

--  begin read only
   end Test_setFilePattern;
--  end read only


--  begin read only
   procedure Test_setFileExtensionPattern (Gnattest_T : in out Test_Parameter);
   procedure Test_setFileExtensionPattern_44d8b2 (Gnattest_T : in out Test_Parameter) renames Test_setFileExtensionPattern;
--  id:2.2/44d8b2476728b3a7/setFileExtensionPattern/1/0/
   procedure Test_setFileExtensionPattern (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:20:4:setFileExtensionPattern
--  end read only

   begin
      setFileExtensionPattern(Gnattest_T.Fixture, ".jp?");
      AUnit.Assertions.Assert
        (getFileExtensionPattern(Gnattest_T.Fixture) = ".jp?",
         "FileExtensionPattern wasnt set properly.");

--  begin read only
   end Test_setFileExtensionPattern;
--  end read only


--  begin read only
   procedure Test_setFullName (Gnattest_T : in out Test_Parameter);
   procedure Test_setFullName_ce486b (Gnattest_T : in out Test_Parameter) renames Test_setFullName;
--  id:2.2/ce486b3315245996/setFullName/1/0/
   procedure Test_setFullName (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:21:4:setFullName
--  end read only

   begin
      setFullName(Gnattest_T.Fixture, True);
      AUnit.Assertions.Assert
        (getFullName(Gnattest_T.Fixture),
         "FullNameFlag wasnt set properly.");

--  begin read only
   end Test_setFullName;
--  end read only


--  begin read only
   procedure Test_setDatePattern (Gnattest_T : in out Test_Parameter);
   procedure Test_setDatePattern_f2b5d9 (Gnattest_T : in out Test_Parameter) renames Test_setDatePattern;
--  id:2.2/f2b5d91c049fbf7c/setDatePattern/1/0/
   procedure Test_setDatePattern (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:22:4:setDatePattern
--  end read only

   begin
      setDatePattern(Gnattest_T.Fixture, "1970-01-??");
      AUnit.Assertions.Assert
        (getDatePattern(Gnattest_T.Fixture) = "1970-01-??",
         "DatePattern wasnt set properly.");

--  begin read only
   end Test_setDatePattern;
--  end read only


--  begin read only
   procedure Test_setMinFileSize (Gnattest_T : in out Test_Parameter);
   procedure Test_setMinFileSize_9892fd (Gnattest_T : in out Test_Parameter) renames Test_setMinFileSize;
--  id:2.2/9892fdb8c5a81d7b/setMinFileSize/1/0/
   procedure Test_setMinFileSize (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:23:4:setMinFileSize
--  end read only

   begin
      setMinFileSize(Gnattest_T.Fixture, 5);
      AUnit.Assertions.Assert
        (getMinFileSize(Gnattest_T.Fixture) = 5,
         "MinFileSize wasnt set properly.");

--  begin read only
   end Test_setMinFileSize;
--  end read only


--  begin read only
   procedure Test_setMaxFileSize (Gnattest_T : in out Test_Parameter);
   procedure Test_setMaxFileSize_573c01 (Gnattest_T : in out Test_Parameter) renames Test_setMaxFileSize;
--  id:2.2/573c015660f30491/setMaxFileSize/1/0/
   procedure Test_setMaxFileSize (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:24:4:setMaxFileSize
--  end read only

   begin
      setMaxFileSize(Gnattest_T.Fixture, 100);
      AUnit.Assertions.Assert
        (getMaxFileSize(Gnattest_T.Fixture) = 100,
         "MaxFileSize wasnt set properly.");

--  begin read only
   end Test_setMaxFileSize;
--  end read only


--  begin read only
   procedure Test_setDateRangeStart (Gnattest_T : in out Test_Parameter);
   procedure Test_setDateRangeStart_369ce6 (Gnattest_T : in out Test_Parameter) renames Test_setDateRangeStart;
--  id:2.2/369ce63a30d7d852/setDateRangeStart/1/0/
   procedure Test_setDateRangeStart (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:25:4:setDateRangeStart
--  end read only

   begin
      setDateRangeStart(Gnattest_T.Fixture, "1970-01-01");
      AUnit.Assertions.Assert
        (getDateRangeStart(Gnattest_T.Fixture) = "1970-01-01",
         "DateRangeStart wasnt set properly.");

--  begin read only
   end Test_setDateRangeStart;
--  end read only


--  begin read only
   procedure Test_setDateRangeFinish (Gnattest_T : in out Test_Parameter);
   procedure Test_setDateRangeFinish_126865 (Gnattest_T : in out Test_Parameter) renames Test_setDateRangeFinish;
--  id:2.2/12686500903453be/setDateRangeFinish/1/0/
   procedure Test_setDateRangeFinish (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:26:4:setDateRangeFinish
--  end read only

   begin
      setDateRangeFinish(Gnattest_T.Fixture, "2016-12-07");
      AUnit.Assertions.Assert
        (getDateRangeFinish(Gnattest_T.Fixture) = "2016-12-07",
         "DateRangeFinish wasnt set properly.");

--  begin read only
   end Test_setDateRangeFinish;
--  end read only


--  begin read only
   procedure Test_setTimePattern (Gnattest_T : in out Test_Parameter);
   procedure Test_setTimePattern_ec73e9 (Gnattest_T : in out Test_Parameter) renames Test_setTimePattern;
--  id:2.2/ec73e95e466f8197/setTimePattern/1/0/
   procedure Test_setTimePattern (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:27:4:setTimePattern
--  end read only

   begin
      setTimePattern(Gnattest_T.Fixture, "10:12:00");
      AUnit.Assertions.Assert
        (getTimePattern(Gnattest_T.Fixture) = "10:12:00",
         "TimePattern wasnt set properly.");

--  begin read only
   end Test_setTimePattern;
--  end read only


--  begin read only
   procedure Test_setTimeRangeStart (Gnattest_T : in out Test_Parameter);
   procedure Test_setTimeRangeStart_0859ee (Gnattest_T : in out Test_Parameter) renames Test_setTimeRangeStart;
--  id:2.2/0859ee486cb1ada6/setTimeRangeStart/1/0/
   procedure Test_setTimeRangeStart (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:28:4:setTimeRangeStart
--  end read only

   begin
      setTimeRangeStart(Gnattest_T.Fixture, "10:01:00");
      AUnit.Assertions.Assert
        (getTimeRangeStart(Gnattest_T.Fixture) = "10:01:00",
         "TimeRangeStart wasnt set properly.");

--  begin read only
   end Test_setTimeRangeStart;
--  end read only


--  begin read only
   procedure Test_setTimeRangeFinish (Gnattest_T : in out Test_Parameter);
   procedure Test_setTimeRangeFinish_2f7c64 (Gnattest_T : in out Test_Parameter) renames Test_setTimeRangeFinish;
--  id:2.2/2f7c64ec580695f8/setTimeRangeFinish/1/0/
   procedure Test_setTimeRangeFinish (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:29:4:setTimeRangeFinish
--  end read only

   begin
      setTimeRangeFinish(Gnattest_T.Fixture, "11:59:00");
      AUnit.Assertions.Assert
        (getTimeRangeFinish(Gnattest_T.Fixture) = "11:59:00",
         "TimeRangeFinish wasnt set properly.");

--  begin read only
   end Test_setTimeRangeFinish;
--  end read only


--  begin read only
   procedure Test_setMinWidth (Gnattest_T : in out Test_Parameter);
   procedure Test_setMinWidth_91512a (Gnattest_T : in out Test_Parameter) renames Test_setMinWidth;
--  id:2.2/91512a599fef3128/setMinWidth/1/0/
   procedure Test_setMinWidth (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:30:4:setMinWidth
--  end read only

   begin
      setMinWidth(Gnattest_T.Fixture, 10);
      AUnit.Assertions.Assert
        (getMinWidth(Gnattest_T.Fixture) = 10,
         "MinWidth wasnt set properly.");

--  begin read only
   end Test_setMinWidth;
--  end read only


--  begin read only
   procedure Test_setMaxWidth (Gnattest_T : in out Test_Parameter);
   procedure Test_setMaxWidth_b18635 (Gnattest_T : in out Test_Parameter) renames Test_setMaxWidth;
--  id:2.2/b186355233c9a9b4/setMaxWidth/1/0/
   procedure Test_setMaxWidth (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:31:4:setMaxWidth
--  end read only

   begin
      setMaxWidth(Gnattest_T.Fixture, 100);
      AUnit.Assertions.Assert
        (getMaxWidth(Gnattest_T.Fixture) = 100,
         "MaxWidth wasnt set properly.");

--  begin read only
   end Test_setMaxWidth;
--  end read only


--  begin read only
   procedure Test_setMinHeight (Gnattest_T : in out Test_Parameter);
   procedure Test_setMinHeight_0be52e (Gnattest_T : in out Test_Parameter) renames Test_setMinHeight;
--  id:2.2/0be52e3869ffd8c2/setMinHeight/1/0/
   procedure Test_setMinHeight (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:32:4:setMinHeight
--  end read only

   begin
      setMinHeight(Gnattest_T.Fixture, 10);
      AUnit.Assertions.Assert
        (getMinHeight(Gnattest_T.Fixture) = 10,
         "MinHeight wasnt set properly.");

--  begin read only
   end Test_setMinHeight;
--  end read only


--  begin read only
   procedure Test_setMaxHeight (Gnattest_T : in out Test_Parameter);
   procedure Test_setMaxHeight_44b261 (Gnattest_T : in out Test_Parameter) renames Test_setMaxHeight;
--  id:2.2/44b26106674796c7/setMaxHeight/1/0/
   procedure Test_setMaxHeight (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:33:4:setMaxHeight
--  end read only

   begin
      setMaxHeight(Gnattest_T.Fixture, 100);
      AUnit.Assertions.Assert
        (getMaxHeight(Gnattest_T.Fixture) = 100,
         "MaxHeight wasnt set properly.");

--  begin read only
   end Test_setMaxHeight;
--  end read only


--  begin read only
   procedure Test_setHelp (Gnattest_T : in out Test_Parameter);
   procedure Test_setHelp_0551fa (Gnattest_T : in out Test_Parameter) renames Test_setHelp;
--  id:2.2/0551fa4d2f9bbade/setHelp/1/0/
   procedure Test_setHelp (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:34:4:setHelp
--  end read only

   begin
      setHelp(Gnattest_T.Fixture, True);
      AUnit.Assertions.Assert
        (flagHelp(Gnattest_T.Fixture) = True,
         "HelpFlag wasnt set properly.");

--  begin read only
   end Test_setHelp;
--  end read only


--  begin read only
   procedure Test_setRename (Gnattest_T : in out Test_Parameter);
   procedure Test_setRename_789fd0 (Gnattest_T : in out Test_Parameter) renames Test_setRename;
--  id:2.2/789fd05ec88a69a5/setRename/1/0/
   procedure Test_setRename (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:35:4:setRename
--  end read only

   begin
      setRename(Gnattest_T.Fixture, True);
      AUnit.Assertions.Assert
        (getRename(Gnattest_T.Fixture),
         "RenameFlag wasnt set properly.");

--  begin read only
   end Test_setRename;
--  end read only


--  begin read only
   procedure Test_setDebug (Gnattest_T : in out Test_Parameter);
   procedure Test_setDebug_308b04 (Gnattest_T : in out Test_Parameter) renames Test_setDebug;
--  id:2.2/308b04f0b2724838/setDebug/1/0/
   procedure Test_setDebug (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:36:4:setDebug
--  end read only

   begin
      setDebug(Gnattest_T.Fixture, True);
      AUnit.Assertions.Assert
        (getDebug(Gnattest_T.Fixture),
         "DebugFlag wasnt set properly.");

--  begin read only
   end Test_setDebug;
--  end read only


--  begin read only
   procedure Test_getPath (Gnattest_T : in out Test_Parameter);
   procedure Test_getPath_fc393c (Gnattest_T : in out Test_Parameter) renames Test_getPath;
--  id:2.2/fc393c56504bd5a9/getPath/1/0/
   procedure Test_getPath (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:39:4:getPath
--  end read only

   begin
      AUnit.Assertions.Assert
        (getPath(Gnattest_T.Fixture) = "/test/tess",
         "Path wasnt read properly.");

--  begin read only
   end Test_getPath;
--  end read only


--  begin read only
   procedure Test_getPathRecursion (Gnattest_T : in out Test_Parameter);
   procedure Test_getPathRecursion_450653 (Gnattest_T : in out Test_Parameter) renames Test_getPathRecursion;
--  id:2.2/450653ba41d221b8/getPathRecursion/1/0/
   procedure Test_getPathRecursion (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:40:4:getPathRecursion
--  end read only

   begin
      AUnit.Assertions.Assert
        (getPathRecursion(Gnattest_T.Fixture),
         "PathRecursion wasnt read properly.");

--  begin read only
   end Test_getPathRecursion;
--  end read only


--  begin read only
   procedure Test_getFilePattern (Gnattest_T : in out Test_Parameter);
   procedure Test_getFilePattern_de78d2 (Gnattest_T : in out Test_Parameter) renames Test_getFilePattern;
--  id:2.2/de78d223c0b8312b/getFilePattern/1/0/
   procedure Test_getFilePattern (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:41:4:getFilePattern
--  end read only

   begin
      AUnit.Assertions.Assert
        (getFilePattern(Gnattest_T.Fixture) = "?.*test",
         "FilePattern wasnt read properly.");

--  begin read only
   end Test_getFilePattern;
--  end read only


--  begin read only
   procedure Test_getFileExtensionPattern (Gnattest_T : in out Test_Parameter);
   procedure Test_getFileExtensionPattern_b13d20 (Gnattest_T : in out Test_Parameter) renames Test_getFileExtensionPattern;
--  id:2.2/b13d20833437a13e/getFileExtensionPattern/1/0/
   procedure Test_getFileExtensionPattern (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:42:4:getFileExtensionPattern
--  end read only

   begin
      AUnit.Assertions.Assert
        (getFileExtensionPattern(Gnattest_T.Fixture) = ".jp?",
         "FileExtensionPattern wasnt read properly.");

--  begin read only
   end Test_getFileExtensionPattern;
--  end read only


--  begin read only
   procedure Test_getFullName (Gnattest_T : in out Test_Parameter);
   procedure Test_getFullName_169f79 (Gnattest_T : in out Test_Parameter) renames Test_getFullName;
--  id:2.2/169f79d5f88101f8/getFullName/1/0/
   procedure Test_getFullName (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:43:4:getFullName
--  end read only

   begin
      AUnit.Assertions.Assert
        (getFullName(Gnattest_T.Fixture),
         "FullName wasnt read properly.");

--  begin read only
   end Test_getFullName;
--  end read only


--  begin read only
   procedure Test_getDatePattern (Gnattest_T : in out Test_Parameter);
   procedure Test_getDatePattern_56846b (Gnattest_T : in out Test_Parameter) renames Test_getDatePattern;
--  id:2.2/56846bfc30ab209d/getDatePattern/1/0/
   procedure Test_getDatePattern (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:44:4:getDatePattern
--  end read only

   begin
      AUnit.Assertions.Assert
        (getDatePattern(Gnattest_T.Fixture) = "1970-01-??",
         "DatePattern wasnt read properly.");

--  begin read only
   end Test_getDatePattern;
--  end read only


--  begin read only
   procedure Test_getMinFileSize (Gnattest_T : in out Test_Parameter);
   procedure Test_getMinFileSize_96e0a9 (Gnattest_T : in out Test_Parameter) renames Test_getMinFileSize;
--  id:2.2/96e0a9d2750923bd/getMinFileSize/1/0/
   procedure Test_getMinFileSize (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:45:4:getMinFileSize
--  end read only

   begin
      AUnit.Assertions.Assert
        (getMinFileSize(Gnattest_T.Fixture) = 5,
         "MinFileSize wasnt read properly.");

--  begin read only
   end Test_getMinFileSize;
--  end read only


--  begin read only
   procedure Test_getMaxFileSize (Gnattest_T : in out Test_Parameter);
   procedure Test_getMaxFileSize_cdb058 (Gnattest_T : in out Test_Parameter) renames Test_getMaxFileSize;
--  id:2.2/cdb0589878ee8515/getMaxFileSize/1/0/
   procedure Test_getMaxFileSize (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:46:4:getMaxFileSize
--  end read only

   begin
      AUnit.Assertions.Assert
        (getMaxFileSize(Gnattest_T.Fixture) = 100,
         "MaxFileSize wasnt read properly.");

--  begin read only
   end Test_getMaxFileSize;
--  end read only


--  begin read only
   procedure Test_getDateRangeStart (Gnattest_T : in out Test_Parameter);
   procedure Test_getDateRangeStart_6a8fa9 (Gnattest_T : in out Test_Parameter) renames Test_getDateRangeStart;
--  id:2.2/6a8fa922af0f6b0c/getDateRangeStart/1/0/
   procedure Test_getDateRangeStart (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:47:4:getDateRangeStart
--  end read only

   begin
      AUnit.Assertions.Assert
        (getDateRangeStart(Gnattest_T.Fixture) = "1970-01-01",
         "DateRangeStart wasnt read properly.");

--  begin read only
   end Test_getDateRangeStart;
--  end read only


--  begin read only
   procedure Test_getDateRangeFinish (Gnattest_T : in out Test_Parameter);
   procedure Test_getDateRangeFinish_3f5690 (Gnattest_T : in out Test_Parameter) renames Test_getDateRangeFinish;
--  id:2.2/3f569073c871c20b/getDateRangeFinish/1/0/
   procedure Test_getDateRangeFinish (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:48:4:getDateRangeFinish
--  end read only

   begin
      AUnit.Assertions.Assert
        (getDateRangeFinish(Gnattest_T.Fixture) = "2016-12-07",
         "DateRangeFinish wasnt read properly.");

--  begin read only
   end Test_getDateRangeFinish;
--  end read only


--  begin read only
   procedure Test_getTimePattern (Gnattest_T : in out Test_Parameter);
   procedure Test_getTimePattern_e758ab (Gnattest_T : in out Test_Parameter) renames Test_getTimePattern;
--  id:2.2/e758ab6cbfb036bb/getTimePattern/1/0/
   procedure Test_getTimePattern (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:49:4:getTimePattern
--  end read only

   begin
      AUnit.Assertions.Assert
        (getTimePattern(Gnattest_T.Fixture) = "10:12:00",
         "TimePattern wasnt read properly.");

--  begin read only
   end Test_getTimePattern;
--  end read only


--  begin read only
   procedure Test_getTimeRangeStart (Gnattest_T : in out Test_Parameter);
   procedure Test_getTimeRangeStart_07b143 (Gnattest_T : in out Test_Parameter) renames Test_getTimeRangeStart;
--  id:2.2/07b143fcd3e4cbab/getTimeRangeStart/1/0/
   procedure Test_getTimeRangeStart (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:50:4:getTimeRangeStart
--  end read only

   begin
      AUnit.Assertions.Assert
        (getTimeRangeStart(Gnattest_T.Fixture) = "10:01:00",
         "TimeRangeStart wasnt read properly.");

--  begin read only
   end Test_getTimeRangeStart;
--  end read only


--  begin read only
   procedure Test_getTimeRangeFinish (Gnattest_T : in out Test_Parameter);
   procedure Test_getTimeRangeFinish_379e39 (Gnattest_T : in out Test_Parameter) renames Test_getTimeRangeFinish;
--  id:2.2/379e39e6ab63e002/getTimeRangeFinish/1/0/
   procedure Test_getTimeRangeFinish (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:51:4:getTimeRangeFinish
--  end read only

   begin
      AUnit.Assertions.Assert
        (getTimeRangeFinish(Gnattest_T.Fixture) = "11:59:00",
         "TimeRangeFinish wasnt read properly.");

--  begin read only
   end Test_getTimeRangeFinish;
--  end read only


--  begin read only
   procedure Test_getMinWidth (Gnattest_T : in out Test_Parameter);
   procedure Test_getMinWidth_08aec2 (Gnattest_T : in out Test_Parameter) renames Test_getMinWidth;
--  id:2.2/08aec2f2bcb5deb8/getMinWidth/1/0/
   procedure Test_getMinWidth (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:52:4:getMinWidth
--  end read only

   begin
      AUnit.Assertions.Assert
        (getMinWidth(Gnattest_T.Fixture) = 10,
         "MinWidth wasnt read properly.");

--  begin read only
   end Test_getMinWidth;
--  end read only


--  begin read only
   procedure Test_getMaxWidth (Gnattest_T : in out Test_Parameter);
   procedure Test_getMaxWidth_1d20dd (Gnattest_T : in out Test_Parameter) renames Test_getMaxWidth;
--  id:2.2/1d20dd5e9f7d8306/getMaxWidth/1/0/
   procedure Test_getMaxWidth (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:53:4:getMaxWidth
--  end read only

   begin
      AUnit.Assertions.Assert
        (getMaxWidth(Gnattest_T.Fixture) = 100,
         "MaxWidth wasnt read properly.");

--  begin read only
   end Test_getMaxWidth;
--  end read only


--  begin read only
   procedure Test_getMinHeight (Gnattest_T : in out Test_Parameter);
   procedure Test_getMinHeight_54b8b9 (Gnattest_T : in out Test_Parameter) renames Test_getMinHeight;
--  id:2.2/54b8b944588f6c83/getMinHeight/1/0/
   procedure Test_getMinHeight (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:54:4:getMinHeight
--  end read only

   begin
      AUnit.Assertions.Assert
        (getMinHeight(Gnattest_T.Fixture) = 10,
         "MinHeight wasnt read properly.");

--  begin read only
   end Test_getMinHeight;
--  end read only


--  begin read only
   procedure Test_getMaxHeight (Gnattest_T : in out Test_Parameter);
   procedure Test_getMaxHeight_d9018b (Gnattest_T : in out Test_Parameter) renames Test_getMaxHeight;
--  id:2.2/d9018b7ce82e86b2/getMaxHeight/1/0/
   procedure Test_getMaxHeight (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:55:4:getMaxHeight
--  end read only

   begin
      AUnit.Assertions.Assert
        (getMaxHeight(Gnattest_T.Fixture) = 100,
         "MaxHeight wasnt read properly.");

--  begin read only
   end Test_getMaxHeight;
--  end read only


--  begin read only
   procedure Test_getHelp (Gnattest_T : in out Test_Parameter);
   procedure Test_getHelp_ab59e1 (Gnattest_T : in out Test_Parameter) renames Test_getHelp;
--  id:2.2/ab59e1ba76ba7db9/getHelp/1/0/
   procedure Test_getHelp (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:56:4:getHelp
--  end read only

   begin
      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_getHelp;
--  end read only


--  begin read only
   procedure Test_getRename (Gnattest_T : in out Test_Parameter);
   procedure Test_getRename_42e141 (Gnattest_T : in out Test_Parameter) renames Test_getRename;
--  id:2.2/42e14154bd612471/getRename/1/0/
   procedure Test_getRename (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:57:4:getRename
--  end read only

   begin
      AUnit.Assertions.Assert
        (getRename(Gnattest_T.Fixture),
         "RenameFlag wasnt read properly.");

--  begin read only
   end Test_getRename;
--  end read only


--  begin read only
   procedure Test_getDebug (Gnattest_T : in out Test_Parameter);
   procedure Test_getDebug_9ba390 (Gnattest_T : in out Test_Parameter) renames Test_getDebug;
--  id:2.2/9ba3903f93e44f62/getDebug/1/0/
   procedure Test_getDebug (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:58:4:getDebug
--  end read only

   begin
      AUnit.Assertions.Assert
        (getDebug(Gnattest_T.Fixture),
         "DebugFlag wasnt read properly.");

--  begin read only
   end Test_getDebug;
--  end read only


--  begin read only
   procedure Test_flagPath (Gnattest_T : in out Test_Parameter);
   procedure Test_flagPath_c1a53c (Gnattest_T : in out Test_Parameter) renames Test_flagPath;
--  id:2.2/c1a53c070acf821f/flagPath/1/0/
   procedure Test_flagPath (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:61:4:flagPath
--  end read only

   begin
      AUnit.Assertions.Assert
        (flagPath(Gnattest_T.Fixture),
         "FlagPath wasnt set.");

--  begin read only
   end Test_flagPath;
--  end read only


--  begin read only
   procedure Test_flagPathRecursion (Gnattest_T : in out Test_Parameter);
   procedure Test_flagPathRecursion_6d9bb4 (Gnattest_T : in out Test_Parameter) renames Test_flagPathRecursion;
--  id:2.2/6d9bb41a6d5e4352/flagPathRecursion/1/0/
   procedure Test_flagPathRecursion (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:62:4:flagPathRecursion
--  end read only

   begin
      AUnit.Assertions.Assert
        (flagPathRecursion(Gnattest_T.Fixture),
         "FlagPathRecursion wasnt set.");

--  begin read only
   end Test_flagPathRecursion;
--  end read only


--  begin read only
   procedure Test_flagFilePattern (Gnattest_T : in out Test_Parameter);
   procedure Test_flagFilePattern_191069 (Gnattest_T : in out Test_Parameter) renames Test_flagFilePattern;
--  id:2.2/1910692aced22ad5/flagFilePattern/1/0/
   procedure Test_flagFilePattern (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:63:4:flagFilePattern
--  end read only

   begin
      AUnit.Assertions.Assert
        (flagFilePattern(Gnattest_T.Fixture),
         "FlagFilePattern wasnt set.");

--  begin read only
   end Test_flagFilePattern;
--  end read only


--  begin read only
   procedure Test_flagFileExtensionPattern (Gnattest_T : in out Test_Parameter);
   procedure Test_flagFileExtensionPattern_83a5bb (Gnattest_T : in out Test_Parameter) renames Test_flagFileExtensionPattern;
--  id:2.2/83a5bb264033bc70/flagFileExtensionPattern/1/0/
   procedure Test_flagFileExtensionPattern (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:64:4:flagFileExtensionPattern
--  end read only

   begin

      AUnit.Assertions.Assert
        (flagFileExtensionPattern(Gnattest_T.Fixture),
         "FlagFileExtensionPattern wasnt set.");

--  begin read only
   end Test_flagFileExtensionPattern;
--  end read only


--  begin read only
   procedure Test_flagFullName (Gnattest_T : in out Test_Parameter);
   procedure Test_flagFullName_c12375 (Gnattest_T : in out Test_Parameter) renames Test_flagFullName;
--  id:2.2/c12375d70becbf7c/flagFullName/1/0/
   procedure Test_flagFullName (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:65:4:flagFullName
--  end read only

   begin
      AUnit.Assertions.Assert
        (flagFullName(Gnattest_T.Fixture),
         "FlagFullName wasnt set.");

--  begin read only
   end Test_flagFullName;
--  end read only


--  begin read only
   procedure Test_flagFileSize (Gnattest_T : in out Test_Parameter);
   procedure Test_flagFileSize_5da7ff (Gnattest_T : in out Test_Parameter) renames Test_flagFileSize;
--  id:2.2/5da7ff7052a99b97/flagFileSize/1/0/
   procedure Test_flagFileSize (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:66:4:flagFileSize
--  end read only

   begin
      AUnit.Assertions.Assert
        (flagFileSize(Gnattest_T.Fixture),
         "FlagFileSize wasnt set.");

--  begin read only
   end Test_flagFileSize;
--  end read only


--  begin read only
   procedure Test_flagDatePattern (Gnattest_T : in out Test_Parameter);
   procedure Test_flagDatePattern_148097 (Gnattest_T : in out Test_Parameter) renames Test_flagDatePattern;
--  id:2.2/1480975b8e8b265d/flagDatePattern/1/0/
   procedure Test_flagDatePattern (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:67:4:flagDatePattern
--  end read only

   begin
      AUnit.Assertions.Assert
        (flagDatePattern(Gnattest_T.Fixture),
         "FlagDatePattern wasnt set.");

--  begin read only
   end Test_flagDatePattern;
--  end read only


--  begin read only
   procedure Test_flagDateRange (Gnattest_T : in out Test_Parameter);
   procedure Test_flagDateRange_593993 (Gnattest_T : in out Test_Parameter) renames Test_flagDateRange;
--  id:2.2/593993d436244c4d/flagDateRange/1/0/
   procedure Test_flagDateRange (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:68:4:flagDateRange
--  end read only

   begin
      AUnit.Assertions.Assert
        (flagDateRange(Gnattest_T.Fixture),
         "FlagDateRange wasnt set.");

--  begin read only
   end Test_flagDateRange;
--  end read only


--  begin read only
   procedure Test_flagTimePattern (Gnattest_T : in out Test_Parameter);
   procedure Test_flagTimePattern_50c4fa (Gnattest_T : in out Test_Parameter) renames Test_flagTimePattern;
--  id:2.2/50c4fa4f9c8777fd/flagTimePattern/1/0/
   procedure Test_flagTimePattern (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:69:4:flagTimePattern
--  end read only

   begin
      AUnit.Assertions.Assert
        (flagTimePattern(Gnattest_T.Fixture),
         "FlagTimePattern wasnt set.");

--  begin read only
   end Test_flagTimePattern;
--  end read only


--  begin read only
   procedure Test_flagTimeRange (Gnattest_T : in out Test_Parameter);
   procedure Test_flagTimeRange_9b5a94 (Gnattest_T : in out Test_Parameter) renames Test_flagTimeRange;
--  id:2.2/9b5a940d34d7bb68/flagTimeRange/1/0/
   procedure Test_flagTimeRange (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:70:4:flagTimeRange
--  end read only

   begin
      AUnit.Assertions.Assert
        (flagTimeRange(Gnattest_T.Fixture),
         "FlagTimeRange wasnt set.");

--  begin read only
   end Test_flagTimeRange;
--  end read only


--  begin read only
   procedure Test_flagImageSize (Gnattest_T : in out Test_Parameter);
   procedure Test_flagImageSize_9579af (Gnattest_T : in out Test_Parameter) renames Test_flagImageSize;
--  id:2.2/9579af2a9576cdbe/flagImageSize/1/0/
   procedure Test_flagImageSize (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:71:4:flagImageSize
--  end read only

   begin
      AUnit.Assertions.Assert
        (flagImageSize(Gnattest_T.Fixture),
         "FlagImageSize wasnt set.");

--  begin read only
   end Test_flagImageSize;
--  end read only


--  begin read only
   procedure Test_flagHelp (Gnattest_T : in out Test_Parameter);
   procedure Test_flagHelp_905052 (Gnattest_T : in out Test_Parameter) renames Test_flagHelp;
--  id:2.2/9050524171b0fae7/flagHelp/1/0/
   procedure Test_flagHelp (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:72:4:flagHelp
--  end read only

   begin
      AUnit.Assertions.Assert
        (flagHelp(Gnattest_T.Fixture),
         "FlagHelp wasnt set.");

--  begin read only
   end Test_flagHelp;
--  end read only


--  begin read only
   procedure Test_flagRename (Gnattest_T : in out Test_Parameter);
   procedure Test_flagRename_c65d1a (Gnattest_T : in out Test_Parameter) renames Test_flagRename;
--  id:2.2/c65d1a55c6cc87c4/flagRename/1/0/
   procedure Test_flagRename (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:73:4:flagRename
--  end read only

   begin
      AUnit.Assertions.Assert
        (flagRename(Gnattest_T.Fixture),
         "FlagRename wasnt set.");

--  begin read only
   end Test_flagRename;
--  end read only


--  begin read only
   procedure Test_flagDebug (Gnattest_T : in out Test_Parameter);
   procedure Test_flagDebug_2dbf3b (Gnattest_T : in out Test_Parameter) renames Test_flagDebug;
--  id:2.2/2dbf3b30907638be/flagDebug/1/0/
   procedure Test_flagDebug (Gnattest_T : in out Test_Parameter) is
   --  parameters.ads:74:4:flagDebug
--  end read only

   begin
      AUnit.Assertions.Assert
        (flagDebug(Gnattest_T.Fixture),
         "FlagDebug wasnt set.");

--  begin read only
   end Test_flagDebug;
--  end read only

end Parameters.Parameter_Test_Data.Parameter_Tests;