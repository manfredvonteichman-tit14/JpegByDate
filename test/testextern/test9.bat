@echo off

REM Backup:
call backupTestfiles

REM Test:
..\..\bin\JpegByDate.exe -p ../different_types > tmp9.txt

REM Ergebnis:
fc test9.txt tmp9.txt

REM Auswertung:
if errorlevel 1 (
echo Test fehlgeschlagen!
) else ( if errorlevel 0 echo Test erfolgreich! )

REM Aufraumen:
call restoreTestfiles
del tmp9.txt