@echo off

rem Check if python launcher is installed
if exist %SYSTEMROOT%\py.exe (
    py %~dp0\gdrive.py %*
    goto end
)

rem Check if python3 alias is usable
python3 --version > NUL 2>&1
if %ERRORLEVEL% == 0 (
    python3 %~dp0\gdrive.py %*
    goto end
)

rem If everything else fails, try running default python
python %~dp0\gdrive.py %*
:end
