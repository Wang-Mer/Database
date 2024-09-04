@echo off
setlocal enabledelayedexpansion

REM 设置 UTF-8 编码
chcp 65001

echo 读取包含应用程序路径的文本文件
for /f "usebackq delims=" %%a in ("app.txt") do (
    echo 去除路径两边的双引号
    set "APP_PATH=%%a"
    set "APP_PATH=!APP_PATH:"=""!"

    echo 输出调试信息
    echo Starting application: !APP_PATH!

    echo 检查路径是否存在
    if exist "!APP_PATH!" (
        start "" "!APP_PATH!"
    ) else (
        echo !APP_PATH! does not exist.
    )
    timeout /t 2 /nobreak >nul
)

pause
endlocal