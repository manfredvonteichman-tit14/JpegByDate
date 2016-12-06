@echo off

REM Backup:
call backupTestfiles

REM Test:
..\..\bin\JpegByDate.exe -p ../different_times > tmp8.txt

REM Ergebnis:
fc test8.txt tmp8.txt

REM Auswertung:
if errorlevel 1 (
echo Test fehlgeschlagen!
) else ( if errorlevel 0 echo Test erfolgreich! )

REM Aufraumen:
call restoreTestfiles
del tmp8.txt