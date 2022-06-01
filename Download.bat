@echo off
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/hp10/XMath/main/Terminal.bat -Outfile Terminal.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/hp10/XMath/main/XMathA.bat -Outfile XMathA.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/hp10/XMath/main/XMathD.bat -Outfile XMathD.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/hp10/XMath/main/XMathDoubles.bat -Outfile XMathDoubles.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/hp10/XMath/main/XMathM.bat -Outfile XMathM.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/hp10/XMath/main/XMathS.bat -Outfile XMathS.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/hp10/XMath/main/rungetq.bat -Outfile rungetq.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/hp10/XMath/main/datetest.temp -Outfile datetest.temp"
exit
