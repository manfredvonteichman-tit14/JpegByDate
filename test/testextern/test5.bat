@echo off

REM Backup:
call backupTestfiles

REM Test:
..\..\bin\JpegByDate.exe --debug -f ".?*()[]{}\^$+-&" >tmp5.txt

REM Ergebnis:
fc test5.txt tmp5.txt

REM Auswertung:
if errorlevel 1 (
echo Test fehlgeschlagen!
) else ( if errorlevel 0 echo Test erfolgreich! )

REM Aufraumen:
call restoreTestfiles
del tmp5.txt