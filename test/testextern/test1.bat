@echo off

REM Backup:
call backupTestfiles

REM Test:
..\..\bin\JpegByDate.exe -r -p ../ --debug -d 2016-11-1? > tmp1.txt

REM Ergebnis:
fc test1.txt tmp1.txt

REM Auswertung:
if errorlevel 1 (
echo Test fehlgeschlagen!
) else ( if errorlevel 0 echo Test erfolgreich! )

REM Aufraumen:
call restoreTestfiles
del tmp1.txt