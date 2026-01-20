@echo off
chcp 65001 >nul
echo ========================================
echo    酷比泡泡堂 - 启动游戏
echo ========================================
echo.
echo 正在启动游戏...
echo.

cd /d "%~dp0"

:: 使用 Edge 以允许本地文件访问的模式打开
if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
    echo 使用 Microsoft Edge 启动...
    start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --allow-file-access-from-files --disable-web-security --user-data-dir="%TEMP%\edge-kuikly-game" "%~dp0index.html"
    goto :end
)

if exist "C:\Program Files\Microsoft\Edge\Application\msedge.exe" (
    echo 使用 Microsoft Edge 启动...
    start "" "C:\Program Files\Microsoft\Edge\Application\msedge.exe" --allow-file-access-from-files --disable-web-security --user-data-dir="%TEMP%\edge-kuikly-game" "%~dp0index.html"
    goto :end
)

:: 尝试 Chrome
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    echo 使用 Google Chrome 启动...
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --allow-file-access-from-files --disable-web-security --user-data-dir="%TEMP%\chrome-kuikly-game" "%~dp0index.html"
    goto :end
)

if exist "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" (
    echo 使用 Google Chrome 启动...
    start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --allow-file-access-from-files --disable-web-security --user-data-dir="%TEMP%\chrome-kuikly-game" "%~dp0index.html"
    goto :end
)

:: 默认打开
echo 未找到 Edge 或 Chrome，使用默认浏览器...
echo 注意：3D模型可能无法加载
start "" "%~dp0index.html"

:end
echo.
echo 游戏已启动！
echo 如果模型未显示，请等待加载完成（模型文件约68MB）
timeout /t 3 >nul
