@echo off
echo ========================================
echo           作品集快速部署助手
echo ========================================
echo.
echo 选择部署方式：
echo.
echo 1. GitHub Pages（推荐，免费永久）
echo 2. 打开 GitHub 网站手动上传
echo 3. 本地预览（双击打开）
echo.
set /p choice=请输入数字选择 (1-3):

if "%choice%"=="1" goto github_pages
if "%choice%"=="2" goto open_github
if "%choice%"=="3" goto local_preview
echo 无效选择
pause
exit

:github_pages
echo.
echo 正在打开 GitHub...
start https://github.com
echo.
echo 请按以下步骤操作：
echo 1. 登录你的 GitHub 账户
echo 2. 点击右上角 "+" 号 -> "New repository"
echo 3. 仓库名称输入：portfolio
echo 4. 选择 "Public"
echo 5. 点击 "Create repository"
echo 6. 点击 "uploading an existing file"
echo 7. 拖拽以下文件到页面：
echo    - index.html
echo    - 头像2.jpg
echo    - 二维码.jpg
echo 8. 点击 "Commit changes"
echo 9. 进入 Settings -> Pages -> 启用
echo.
pause
exit

:open_github
echo.
echo 正在打开 GitHub...
start https://github.com
echo.
echo 请手动上传文件到新仓库
pause
exit

:local_preview
echo.
echo 正在打开作品集...
start "" "%~dp0index.html"
pause
exit
