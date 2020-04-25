pushd %~dp0
set script_dir="%CD%"
popd
@start /b "" wscript.exe %script_dir%\silent.vbs %*