::零基础编程,windows10测试通过
@echo off
setlocal enabledelayedexpansion
set min=0
set max=9
set /a mod=%max% - %min% + 1
set temp=1
for /l %%i in (1,1,6) do ( 
	set /a num=!RANDOM! %% %mod% + %min%
	set /a temp=!temp!!num!
)
echo !temp:~1,7!
pause
