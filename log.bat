@ECHO OFF
REM * SIMPLE LOG, Version 0.1
REM * Simply logs the provided parameters directly into a
REM *  logfile created with the date as its name
REM * Written by Luke Stevenson
REM * http://www.lucanos.com/

REM * There should be at least one parameter after the filename
IF "%*"=="" GOTO About

setlocal
set LogPath=%USERPROFILE%\Documents\Logs\
set LogFileExt=.txt
set LogFileName=DailyLog%LogFileExt%
set MyLogFile=%date:~10,4%_%date:~7,2%
set MyLogFile=%MyLogFile:/=-%
set MyLogFile=%LogPath%%MyLogFile%_%LogFileName%
::Note that the quotes are REQUIRED around %MyLogFIle% in case it contains a space
echo.%date:~10,4%/%date:~7,2%/%date:~4,2% %time:~0,8% : %*>> "%MyLogFile%"
GOTO End

:About
ECHO.
ECHO SIMPLE LOG,  Version 0.1
ECHO Simply logs the provided parameters directly into a
ECHO  logfile created with the date as its name
ECHO Written by Luke Stevenson
ECHO http://www.lucanos.com/
ECHO.
ECHO.
ECHO Usage: log.bat My Message to log
ECHO.
ECHO Will record into a file named after the current date:
ECHO HH:MM:SS.ss : My Message to log
ECHO.
ECHO.

:End