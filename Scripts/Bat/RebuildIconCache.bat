@chcp 65001 > nul
@echo off
taskkill /IM explorer.exe /F
echo 正在清理图标缓存...
del /A /Q %localappdata%\IconCache.db
echo 重启资源管理器...
start explorer.exe
echo 图标缓存已重建，如有需要，请手动刷新桌面或注销/重启电脑。
pause