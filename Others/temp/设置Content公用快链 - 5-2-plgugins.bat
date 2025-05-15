@echo off
set "Asset_TA_Path=D:\WorlSpaceBackup\AwesomeLive2\Asset_TA"
echo 当前路径：%Asset_TA_Path%

set "CURRENT_DIR=%~dp0"

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo 请以管理员身份运行此脚本！
    pause
    exit /b
)

if not exist "%Asset_TA_Path%\Common" (
    echo 目标目录 %Asset_TA_Path%\Common 不存在！
    pause
    exit /b
)

if not exist "%CURRENT_DIR%\Content" (
    echo 目标目录 %CURRENT_DIR%\Content 不存在！先检查是否checkout工程路径
    pause
    exit /b
)

mklink /j "%CURRENT_DIR%\Content\Common" "%Asset_TA_Path%\Common"
if %errorLevel% equ 0 (
    echo 成功创建目录硬链接！
) else (
    echo 创建目录硬链接失败，错误代码：%errorLevel%
)

mklink /j "%CURRENT_DIR%\Content\Role" "%Asset_TA_Path%\Role"
if %errorLevel% equ 0 (
    echo 成功创建目录硬链接！
) else (
    echo 创建目录硬链接失败，错误代码：%errorLevel%
)

mklink /j "%CURRENT_DIR%\Content\Stage" "%Asset_TA_Path%\Stage"
if %errorLevel% equ 0 (
    echo 成功创建目录硬链接！
) else (
    echo 创建目录硬链接失败，错误代码：%errorLevel%
)

mklink /j "%CURRENT_DIR%\Content\FX" "%Asset_TA_Path%\FX"
if %errorLevel% equ 0 (
    echo 成功创建目录硬链接！
) else (
    echo 创建目录硬链接失败，错误代码：%errorLevel%
)

mklink /j "%CURRENT_DIR%\Plugins" "%Asset_TA_Path%\Plugins_5_2"
if %errorLevel% equ 0 (
    echo 成功创建目录硬链接！
) else (
    echo 创建目录硬链接失败，错误代码：%errorLevel%
)


pause