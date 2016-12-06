@echo off
REM Backup der Testfiles in C:\Temp speichern

xcopy /E /y "..\..\test" "c:\Temp\jpegByDate\test\" /exclude:backupExclude.txt > nul
