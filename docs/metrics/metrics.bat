@echo off

REM Variables

SET PROJECT_DIRECTORY=C:\Users\von_teichman.m-tit14\Documents\GitHub\JpegByDate\src
REM SET PROJECT_DIRECTORY=%1

SET PROJECT_FILE=jpegbydate.gpr
REM SET PROJECT_FILE=%2

SET OUTPUT_DIRECTORY=C:\Users\von_teichman.m-tit14\Documents\GitHub\test_results
REM SET OUTPUT_DIRECTORY=%3

SET OUTPUT_FILE=metrix_1.xml
REM SET OUTPUT_FILE=%4

SET GPS_DIRECTORY=C:\GNAT\2016\bin
REM SET GPS_DIRECTORY=%5

REM Add GPS folder to PATH variable
SET PATH=%PATH%;%GPS_DIRECTORY%


REM Check that folders exist
:IO_CHECK
IF NOT EXIST %PROJECT_DIRECTORY% GOTO IO_FAIL_PROJECT
IF NOT EXIST %OUTPUT_DIRECTORY% GOTO IO_CREATE
GOTO GNAT_METRIC


REM Create folders if they are not present
:IO_CREATE
mkdir %OUTPUT_DIRECTORY%
GOTO IO_CHECK

REM Start GNATmetric
:GNAT_METRIC
echo "Starting metric generation ..."
REM gnat metric -dd -ox %OUTPUT_DIRECTORY%\/%OUTPUT_FILE% -x -P%PROJECT_DIRECTORY%\%PROJECT_FILE% --declarations --statements --lines --lines-code --lines-comment --lines-blank --lines-average --lines-eol-comment
gnat metric  -dd -ox %OUTPUT_DIRECTORY%\/%OUTPUT_FILE% -x -P%PROJECT_DIRECTORY%\%PROJECT_FILE% --syntax-all --lines-all --complexity-all
echo "Metric generation complete."
cd %OUTPUT_DIRECTORY%
pause
exit

REM Project file is not existent
:IO_FAIL_PROJECT
echo "The given project directory (%PROJECT_DIRECTORY%) is not valid."
pause
exit

REM Folder creation failed
:IO_FAIL
echo "The given output directory (%OUTPUT_DIRECTORY%) is not available or could not be created."
pause
exit