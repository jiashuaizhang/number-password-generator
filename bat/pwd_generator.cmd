::零基础编程,windows10测试通过
@echo off
setlocal enabledelayedexpansion
set length=6
set min=0
set max=9
set /a mod=%max% - %min% + 1
set temp=1
for /l %%i in (1,1,!length!) do ( 
	set /a num=!RANDOM! %% %mod% + %min%
	set /a temp=!temp!!num!
)
set pwd=!temp:~1,%length%!
echo !pwd!
pause
