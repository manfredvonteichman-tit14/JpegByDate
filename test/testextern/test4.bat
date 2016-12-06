@echo off

REM Backup:
xcopy /E /y "..\..\test" "c:\Temp\jpegByDate\test\" /exclude:backupExclude.txt > nul

REM Test:
..\..\bin\JpegByDate.exe -c -d ????-??-?? -f * -h -p ../test -r -t ??:??:?? --minSize=1 --maxSize=2147483646 --minWidth=1 --maxWidth=10000 --minHeight=1 --maxHeight=10000 --startDate=2000-01-01 --finDate=2020-01-01 --startTime=16:00:03 --finTime=16:00:02 --fileRegex=.* --rename --debug > tmp4.txt

REM Ergebnis:
fc test4.txt tmp4.txt

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
del tmp4.txt
