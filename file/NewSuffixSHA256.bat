@echo off
echo old file: %1
echo old suffix: %~x1
echo=
echo %time%
certutil -hashfile %1 sha256
echo %time%
echo=
set /p mm=input new suffix...
echo new file: %1.%mm%
set /p oo=enter to continue...
echo %time%
copy /-y %1 %1.%mm%
echo %time%
certutil -hashfile %1.%mm% sha256
echo %time%
echo=
pause