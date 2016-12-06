@echo off

REM Backup:
call backupTestfiles

REM Test:
..\..\bin\JpegByDate.exe --rename -p ../rename > tmp10.txt

REM Ergebnis:
fc test10.txt tmp10.txt

REM Auswertung:
if errorlevel 1 (
echo Test fehlgeschlagen!
) else ( if errorlevel 0 echo Test erfolgreich! )

REM Aufraumen:
call restoreTestfiles
del tmp10.txt