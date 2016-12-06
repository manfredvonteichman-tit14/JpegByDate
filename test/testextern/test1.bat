@echo off
..\..\bin\JpegByDate.exe -r -p ../ --debug -d 2016-11-1? > tmp1.txt

fc test1.txt tmp1.txt

if errorlevel 1 (
echo Test fehlgeschlagen!
) else ( if errorlevel 0 echo Test erfolgreich! )

del tmp1.txt
