@echo off
for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
     set dow=%%i
     set month=%%j
     set day=%%k
     set year=%%l
   )
   
set hour=%time:~0,2%
set minute=%time:~3,2%
set second=%time:~6,2%

set datetimestamp=%month%-%day%-%year% %hour%:%minute%:%second%
echo datetimestamp is %datetimestamp%