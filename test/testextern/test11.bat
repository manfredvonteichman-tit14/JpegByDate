@echo off

REM Backup:
call backupTestfiles

REM Test:
..\..\bin\JpegByDate.exe --startDate=5 -u -f > tmp11.txt

REM Ergebnis:
fc test11.txt tmp11.txt

REM Auswertung:
if errorlevel 1 (
echo Test fehlgeschlagen!
) else ( if errorlevel 0 echo Test erfolgreich! )

REM Aufraumen:
call restoreTestfiles
del tmp11.txt