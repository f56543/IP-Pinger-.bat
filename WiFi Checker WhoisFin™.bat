@echo off
color B

title https://github.com/f56543

:greeting

ECHO  _    _  ____  ____  ____     ___  _   _  ____   ___  _  _  ____  ____ 
ECHO ( \/\/ )(_  _)( ___)(_  _)   / __)( )_( )( ___) / __)( )/ )( ___)(  _ \
ECHO  )    (  _)(_  )__)  _)(_   ( (__  ) _ (  )__) ( (__  )  (  )__)  )   /
ECHO (__/\__)(____)(__)  (____)   \___)(_) (_)(____) \___)(_)\_)(____)(_)\_)                                                                                                                                                                   
set /p IP=Enter IP::
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo Offline.) 
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top 



