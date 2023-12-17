@echo off
cls
color 1f
echo.
echo Universal Downloader By Kostya
echo.
echo ==============================
echo.
echo Do you started this file with administrator power?
@echo off
cls
color 1f
echo.
echo Universal Downloader By Kostya
echo.
echo ==============================
echo.
echo Do you started this file with administrator power?
echo.
echo Yes - 1
echo.
echo No - 2
echo.
echo.
set /p m=type 1 or 2 then press ENTER 
if %m%==2 goto error
if %m%==1 goto step1
:step1
cls
echo.
echo Universal Downloader By Kostya
echo.
echo ==============================
echo.
echo Getting ready to download files...
c:
cd %systemroot%/..
md TemporaryFiles
attrib +s TemporaryFiles
cd TemporaryFiles
cls
goto step2
:step2
:firstinteger
cls
echo.
echo Universal Downloader By Kostya
echo.
echo ==============================
echo.
echo You must to type the key to continue,
echo the key is on https://floppyandopticaldisksstorage.github.io/my-web-site/
echo.
set /p a=Enter The First Integer: 
if %a%==5 goto secondinteger
cls
echo Invalid first integer, please try again
pause
goto firstinteger
:secondinteger
cls
echo.
echo Universal Downloader By Kostya
echo.
echo ==============================
echo.
echo You must to type the key to continue,
echo the key is on https://floppyandopticaldisksstorage.github.io/my-web-site/
echo.
set /p a=Enter The Second Integer: 
if %a%==2 goto thirdinteger
cls
echo Invalid second Integer, please try again
pause
goto secondinteger
:thirdinteger
cls
echo.
echo Universal Downloader By Kostya
echo.
echo ==============================
echo.
echo You must to type the key to continue,
echo the key is on https://floppyandopticaldisksstorage.github.io/my-web-site/
echo.
set /p a=Enter The Third integer: 
if %a%==4 goto fourthinteger
cls
echo Invalid Third Integer, please try again
pause
goto thirdinteger
:fourthinteger
cls
echo.
echo Universal Downloader By Kostya
echo.
echo ==============================
echo.
echo You must to type the key to continue,
echo the key is on https://floppyandopticaldisksstorage.github.io/my-web-site/
echo.
set /p a=Enter The Fourth Integer: 
if %a%==3 goto fifthinteger
cls
echo Invalid fourth Integer, please try again
pause
goto fourthinteger
:fifthinteger
cls
echo.
echo Universal Downloader By Kostya
echo.
echo ==============================
echo.
echo You must to type the key to continue,
echo the key is on https://floppyandopticaldisksstorage.github.io/my-web-site/
echo.
set /p a=Enter The Fifth integer: 
if %a%==6 goto step3
cls
echo Invalid fifth Integer, please try again
pause
goto fifthinteger
