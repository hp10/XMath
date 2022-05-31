@echo off
set cdte=%date:~7,-5%
start rungetq.bat
for /f %%a in (datetest.temp) do set string=%%a
if %string%==%cdte% goto p
set /a string=%string%+1
if %string%==%cdte% echo Way to keep that streak going! & goto p
set dte=%date:~7,-5%
echo %dte%>datetest.temp
:p
title Terminal
choice /c mdas2 /n /m "Press 'm' for multiplication, '2' for doubles, 'd' for division, 'a' for addition, and 's' for subtraction:"
if %errorlevel%==5 start XMathDoubles.bat
if %errorlevel%==4 start XMathS.bat
if %errorlevel%==3 start XMathA.bat
if %errorlevel%==2 start XMathD.bat
if %errorlevel%==1 start XMathM.bat