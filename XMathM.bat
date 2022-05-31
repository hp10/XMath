@echo off
title XMathM
set qd=0
:ques
cls
set /a num1=%random% %%12
set /a num2=%random% %%12
set /a ans=%num1%*%num2%
echo %num1%*%num2%
set /p p=Answer:
if %p%==%ans% (echo That answer is correct! & set ans2=right) else (echo That answer is incorrect. & echo The correct answer was %ans% & set /a qd=%qd%-1 & set ans2=wrong)
set /a qd=%qd%+1
if %ans2%==wrong timeout /t 4 /nobreak>nul
if %ans2%==right timeout /t 2 /nobreak>nul
if %qd%==20 goto done
if %ans2%==wrong goto retry
goto ques

:done
echo You have completed %qd% questions! Good Job!
choice /c est /n /m "Press 'e' to exit, 't' to go to the terminal and 's' to start over."
if %errorlevel%==3 start terminal.bat
if %errorlevel%==2 goto ques
if %errorlevel%==1 exit

:retry
cls
echo %num1%*%num2%
set /p p=Answer:
if %p%==%ans% (echo That answer is correct! & set ans2=right) else (echo That answer is incorrect. & echo The correct answer was %ans% & set /a qd=%qd%-1 & set ans2=wrong)
set /a qd=%qd%+1
if %ans2%==wrong timeout /t 4 /nobreak>nul
if %ans2%==right timeout /t 2 /nobreak>nul
if %qd%==20 goto done
if %ans2%==wrong goto retry
if %ans2%==right goto ques