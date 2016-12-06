@echo off
..\..\bin\JpegByDate.exe -h > tmp2.txt

fc test2.txt tmp2.txt

if errorlevel 1 (
echo Test fehlgeschlagen!
) else ( if errorlevel 0 echo Test erfolgreich! )

del tmp2.txt
