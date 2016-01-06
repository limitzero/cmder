ECHO OFF
cls
echo quick building solution/project :  %1%
msbuild  /t:clean,build /property:WarningLevel=0 /v:quiet /nologo  %1%