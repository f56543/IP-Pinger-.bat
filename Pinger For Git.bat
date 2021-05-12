@echo off
color 4

title https://github.com/f56543

:greeting
cls

ECHO  __        __  _   _____   _      ____   _                     _                  
ECHO  \ \      / / (_) |  ___| (_)    / ___| | |__     ___    ___  | | __   ___   _ __ 
ECHO   \ \ /\ / /  | | | |_    | |   | |     | '_ \   / _ \  / __| | |/ /  / _ \ | '__|
ECHO    \ V  V /   | | |  _|   | |   | |___  | | | | |  __/ | (__  |   <  |  __/ | |   
ECHO     \_/\_/    |_| |_|     |_|    \____| |_| |_|  \___|  \___| |_|\_\  \___| |_|   
                                                                                                                                                                     
set /p IP=Enter IP::
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo Offline.) 
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top 



