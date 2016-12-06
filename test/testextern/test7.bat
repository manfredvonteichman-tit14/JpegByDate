@echo off

REM Backup:
call backupTestfiles

REM Test:
..\..\bin\JpegByDate.exe -p ../different_names > tmp7.txt

REM Ergebnis:
fc test7.txt tmp7.txt

REM Auswertung:
if errorlevel 1 (
echo Test fehlgeschlagen!
) else ( if errorlevel 0 echo Test erfolgreich! )

REM Aufraumen:
call restoreTestfiles
del tmp7.txt