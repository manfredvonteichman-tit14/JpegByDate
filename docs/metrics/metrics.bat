@echo off
REM Variables
SET PROJECT_DIRECTORY=%1
SET PROJECT_FILE=jpegbydate.gpr
SET OUTPUT_DIRECTORY=%2
SET GPS_DIRECTORY=C:\GNAT\2016\bin

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
REM Variables
REM Get short SHA of current commit
for /f "delims=" %%i in ('git rev-parse --short HEAD') do set PROJECT_SHA=%%i
for /f "tokens=2 delims==" %%j in ('wmic os get localdatetime /format:list') do set datetime=%%j
set DATETIME=%datetime:~0,8%_%datetime:~8,6%
SET OUTPUT_FILENAME=%PROJECT_SHA%_%DATETIME%
SET OUTPUT_EXT=.xml
SET OUTPUT_FILE=%OUTPUT_FILENAME%%OUTPUT_EXT%

echo "Starting metric generation ..."
gnat metric -dd -ox %OUTPUT_DIRECTORY%\/%OUTPUT_FILE% -x -P%PROJECT_DIRECTORY%\%PROJECT_FILE% --syntax-all --lines-all --complexity-all --coupling-all
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