@echo off
set useq=6
certutil -hashfile Terminal.bat sha512>Terminal.hash1
certutil -hashfile XMathA.bat sha512>XMathA.hash1
certutil -hashfile XMathD.bat sha512>XMathD.hash1
certutil -hashfile XMathDoubles.bat sha512>XMathDoubles.hash1
certutil -hashfile XMathM.bat sha512>XMathM.hash1
certutil -hashfile XMathS.bat sha512>XMathS.hash1
findstr /v hash Terminal.hash1 > Terminal.hash2
findstr /v hash XMathA.hash1 > XMathA.hash2
findstr /v hash XMathD.hash1 > XMathD.hash2
findstr /v "hash" XMathDoubles.hash1 > XMathDoubles.hash2
findstr /v hash XMathM.hash1 > XMathM.hash2
findstr /v hash XMathS.hash1 > XMathS.hash2
del *.hash1
for /f %%a in (Terminal.hash2) do set XMathT=%%a
for /f %%b in (XMathA.hash2) do set XMathA=%%b
for /f %%c in (XMathD.hash2) do set XMathD=%%c
for /f %%d in (XMathDoubles.hash2) do set XMathDD=%%d
for /f %%e in (XMathM.hash2) do set XMathM=%%e
for /f %%f in (XMathS.hash2) do set XMathS=%%f
if %XMathT%==0a5faf1a3a8d5867a2dbcd45b2a0bc9892cdb2bcdd996cd24604694b6651106cb8701673c0adc09a6af3ea5a656d3185b300947b05d240361c63b2c836dcab0a (set /a useq=%useq%-1)
if %XMathA%==a9bf16cfd71b923d942280b064f68810b9ebe202d315344ec298c8cdaae60d3c347ff58c663bb51f4f335d69daec9c6d729eb921500c89a1783f2e39b9d8b175 set /a useq=%useq%-1
if %XMathD%==c11df02d6c93685aba6277f3e8d8dbb3ac77516451f1d2226f7c5473009441774d17752f253ef3d9c3aba0f7a207d822204013de4ff89a014bd7bfe1c3743ca7 set /a useq=%useq%-1
if %XMathDD%==482eea138d3cc10d9edffc8f92f185a06dcb7bb4ad17cee7b4c6d2c1bbe31107d95e063fbe8eea5cacdc6af7aff62db804805f815ac52288589edd1409ebdca4 set /a useq=%useq%-1
if %XMathM%==9cfe6aa98e515dcffe3a83e010e060d4591788d38738c07f50b4791c064e8df5481656aec897e817c07fa52caab13cb142beb3db11ad7096f387dc1fd3e449c5 set /a useq=%useq%-1
if %XMathS%==f5290dd0009f920a183a281fe2d93368f52a94012cb8118560062eef0f3b3877583bddfc3fca7018c894f478f3804047ff8a7d1ebaa17fbda667e52fb0f542ec set /a useq=%useq%-1
del *.hash2
if %useq%==0 (exit) else (pause)
exit