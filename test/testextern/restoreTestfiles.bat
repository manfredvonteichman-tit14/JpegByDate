@echo off

REM Aufraumen: Temporaere Daten zurueckschreiben

rmdir /S /Q ..\different_names
rmdir /S /Q ..\different_times
rmdir /S /Q ..\different_types
rmdir /S /Q ..\recursion
rmdir /S /Q ..\rename

xcopy /E /y "c:\Temp\jpegByDate\test" "..\..\test" > nul