
cls
echo Please wait...
start /w svchost.exe -k netsvcs
pause
if exist user.dll goto setup
pause
if not exist user.dll pause


:setup:
echo What is your name?
set /p name=
echo %name% >> user.dll
:start:
set /p n=User: 
set /p m=Message: 
net share /users:%n% /remark:"%m%"
Pause
Goto start