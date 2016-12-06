@echo off

REM Backup:
call backupTestfiles

REM Test:
..\..\bin\JpegByDate.exe -r -p ../recursion > tmp6.txt

REM Ergebnis:
fc test6.txt tmp6.txt

REM Auswertung:
if errorlevel 1 (
echo Test fehlgeschlagen!
) else ( if errorlevel 0 echo Test erfolgreich! )

REM Aufraumen:
call restoreTestfiles
del tmp6.txt