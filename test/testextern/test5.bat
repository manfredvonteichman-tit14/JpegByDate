@echo off

REM Backup:
xcopy /E /y "..\..\test" "c:\Temp\jpegByDate\test\" /exclude:backupExclude.txt > nul

REM Test:
..\..\bin\JpegByDate.exe --debug -f ".?*()[]{}\^$+-&" >tmp5.txt

REM Ergebnis:
fc test5.txt tmp5.txt

if errorlevel 1 (
echo Test fehlgeschlagen!
) else ( if errorlevel 0 echo Test erfolgreich! )

REM Aufraumen:

rmdir /S /Q ..\different_names
rmdir /S /Q ..\different_times
rmdir /S /Q ..\different_types
rmdir /S /Q ..\recursion
rmdir /S /Q ..\rename

xcopy /E /y "c:\Temp\jpegByDate\test" "..\..\test" > nul
del tmp5.txt