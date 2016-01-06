ECHO ON
cls
set PATH="C:\Program Files (x86)\Notepad++"; %PATH%
del "%CD%\history.txt"

rem for the %1 parameter, use a date range like D{start date}~D{end date} where the date is like mm/dd/yyyy

if not [%1]==[] tf history "%CD%" /recursive /noprompt /format:detailed /stopafter:15  >>  history.txt
if [%1]==[] goto tf history "%CD%" /recursive /noprompt /format:detailed /version:%1  >>  history.txt

start notepad++.exe  %CD%\history.txt
