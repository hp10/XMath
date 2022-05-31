@echo off
title XMathD
set qd=0
cls
:: Cut (is helpful)
set ques[0].1=1/1
set ques[0].2=2/1
set ques[0].3=3/1
set ques[0].4=4/1
set ques[0].5=5/1
set ques[0].6=6/1
set ques[0].7=7/1
set ques[0].8=8/1
set ques[0].9=9/1
set ques[0].10=10/1
set ques[0].11=11/1
set ques[0].12=12/1
set ques[1].1=2/2
set ques[1].2=4/2
set ques[1].3=6/2
set ques[1].4=8/2
set ques[1].5=10/2
set ques[1].6=12/2
set ques[1].7=14/2
set ques[1].8=16/2
set ques[1].9=18/2
set ques[1].10=20/2
set ques[1].11=22/2
set ques[1].12=24/2
set ques[2].1=3/3
set ques[2].2=6/3
set ques[2].3=9/3
set ques[2].4=12/3
set ques[2].5=15/3
set ques[2].6=18/3
set ques[2].7=21/3
set ques[2].8=24/3
set ques[2].9=27/3
set ques[2].10=30/3
set ques[2].11=33/3
set ques[2].12=36/3
set ques[3].1=4/4
set ques[3].2=8/4
set ques[3].3=12/4
set ques[3].4=16/4
set ques[3].5=20/4
set ques[3].6=24/4
set ques[3].7=28/4
set ques[3].8=32/4
set ques[3].9=36/4
set ques[3].10=40/4
set ques[3].11=44/4
set ques[3].12=48/4
set ques[4].1=5/5
set ques[4].2=10/5
set ques[4].3=15/5
set ques[4].4=20/5
set ques[4].5=25/5
set ques[4].6=30/5
set ques[4].7=35/5
set ques[4].8=40/5
set ques[4].9=45/5
set ques[4].10=50/5
set ques[4].11=55/5
set ques[4].12=60/5
set ques[5].1=6/6
set ques[5].2=12/6
set ques[5].3=18/6
set ques[5].4=24/6
set ques[5].5=30/6
set ques[5].6=36/6
set ques[5].7=42/6
set ques[5].8=48/6
set ques[5].9=54/6
set ques[5].10=60/6
set ques[5].11=66/6
set ques[5].12=72/6
set ques[6].1=7/7
set ques[6].2=14/7
set ques[6].3=21/7
set ques[6].4=28/7
set ques[6].5=35/7
set ques[6].6=42/7
set ques[6].7=49/7
set ques[6].8=56/7
set ques[6].9=63/6
set ques[6].10=70/7
set ques[6].11=77/7
set ques[6].12=84/7
set ques[7].1=8/8
set ques[7].2=16/8
set ques[7].3=24/8
set ques[7].4=32/8
set ques[7].5=40/8
set ques[7].6=48/8
set ques[7].7=56/8
set ques[7].8=64/8
set ques[7].9=72/8
set ques[7].10=80/8
set ques[7].11=88/8
set ques[7].12=96/8
set ques[8].1=9/9
set ques[8].2=18/9
set ques[8].3=27/9
set ques[8].4=36/9
set ques[8].5=45/9
set ques[8].6=54/9
set ques[8].7=63/9
set ques[8].8=72/9
set ques[8].9=81/9
set ques[8].10=90/9
set ques[8].11=99/9
set ques[8].12=108/9
set ques[9].1=10/10
set ques[9].2=20/10
set ques[9].3=30/10
set ques[9].4=40/10
set ques[9].5=50/10
set ques[9].6=60/10
set ques[9].7=70/10
set ques[9].8=80/10
set ques[9].9=90/10
set ques[9].10=100/10
set ques[9].11=110/10
set ques[9].12=120/10
set ques[10].1=11/11
set ques[10].2=22/11
set ques[10].3=33/11
set ques[10].4=44/11
set ques[10].5=55/11
set ques[10].6=66/11
set ques[10].7=77/11
set ques[10].8=88/11
set ques[10].9=99/11
set ques[10].10=110/11
set ques[10].11=121/11
set ques[10].12=132/11
set ques[11].1=12/12
set ques[11].2=24/12
set ques[11].3=36/12
set ques[11].4=48/12
set ques[11].5=60/12
set ques[11].6=72/12
set ques[11].7=84/12
set ques[11].8=96/12
set ques[11].9=108/12
set ques[11].10=120/12
set ques[11].11=132/12
set ques[11].12=144/12
set ques[12].1=0/1
set ques[12].2=0/2
set ques[12].3=0/3
set ques[12].4=0/4
set ques[12].5=0/5
set ques[12].6=0/6
set ques[12].7=0/7
set ques[12].8=0/8
set ques[12].9=0/9
set ques[12].10=0/10
set ques[12].11=0/11
set ques[12].12=0/12
set array1=ques[%divq%].%subq%
set ans=%array1%
set /a rans=%ans%
:: Cut



:ques
cls
set /a divq=%random% %%11
set /a subq=%random% %%12 +1
set /a subq=(%divq%+1)*%subq%
set /a divq=%divq%+1
echo %subq%/%divq%
set /p p=Answer:
set /a ans=%subq%/%divq%
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
echo %subq%/%divq%
set /p p=Answer:
set /a ans=%subq%/%divq%
if %p%==%ans% (echo That answer is correct! & set ans2=right) else (echo That answer is incorrect. & echo The correct answer was %ans% & set /a qd=%qd%-1 & set ans2=wrong)
set /a qd=%qd%+1
if %ans2%==wrong timeout /t 4 /nobreak>nul
if %ans2%==right timeout /t 2 /nobreak>nul
if %qd%==20 goto done
if %ans2%==wrong goto retry
if %ans2%==right goto ques

