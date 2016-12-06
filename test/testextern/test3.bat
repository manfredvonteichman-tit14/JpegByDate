@echo off

REM Backup:
call backupTestfiles

REM Test:
..\..\bin\JpegByDate.exe -d ????-??-?? -E export.csv -f * -h -p ../ -r -t ??:??:?? --minSize=1 --maxSize=2147483646 --minWidth=1 --maxWidth=10000 --minHeight=1 --maxHeight=10000 --startDate=2000-01-01 --finDate=2020-01-01 --startTime=16:00:03 --finTime=16:00:02 --fileRegex=.* --rename --debug > tmp3.txt

REM Ergebnis:
fc test3.txt tmp3.txt

REM Auswertung:
if errorlevel 1 (
echo Test fehlgeschlagen!
) else ( if errorlevel 0 echo Test erfolgreich! )

REM Aufraumen:
call restoreTestfiles
del tmp3.txt
