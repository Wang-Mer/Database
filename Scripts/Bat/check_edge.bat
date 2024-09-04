@echo off
setlocal

:: Define the paths to check
set "EDGE_PATH_1=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
set "EDGE_PATH_2=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"

:: Check if Edge exists
if exist "%EDGE_PATH_1%" (
    echo Microsoft Edge is installed.
) else if exist "%EDGE_PATH_2%" (
    echo Microsoft Edge is installed.
) else (
    echo Microsoft Edge is not installed.
)

endlocal
pause
