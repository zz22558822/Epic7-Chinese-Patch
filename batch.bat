@echo off
@color 0a
@mode con cols=55 lines=15
:: BatchGotAdmin (Run as Admin code starts)
REM --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
:: BatchGotAdmin (Run as Admin code ends)
:: Your codes should start from the following line

echo �}�l�w�˸ɤB ...
echo .
echo ��e���|�G%cd%
echo.
xcopy "%cd%\zh\translation.json" "C:\Program Files\FribbelsE7Optimizer\data\locales\zh" /Y
echo.
xcopy "%cd%\zh-TW\translation.json" "C:\Program Files\FribbelsE7Optimizer\data\locales\zh-TW" /Y
echo.
echo.
echo ----------���U���N�������}���{��------------
pause>nul