@echo off

For %%A in ("%*") do (
    Set Folder=%%~dpA
    Set Name=%%~nxA
)
pushd Folder

for /f "tokens=2 delims=," %%I in (
	'wmic process where "name='devenv.exe'" get ExecutablePath^,Handle /format:csv ^| find /i "devenv.exe"' ) do set "exepath=%%~I" 

if %errorlevel% NEQ 0 (goto notepad)

"%exepath%" /edit "%*"
exit

:notepad
start /b "" notepad.exe "%*"
exit