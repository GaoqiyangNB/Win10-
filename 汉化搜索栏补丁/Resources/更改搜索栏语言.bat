@echo off
chcp 65001
:start
set /p a=你想对你的Windows 10搜索栏的语言做出怎样的设置？(1代表汉化2代表恢复)(汉化后会丢失打酱油的功能)
if %a%==1 goto :zh-CN
if %a%==2 goto :en
else (
goto :wrong
(
:zh-CN
zh-CN.reg
taskkill /f /im explorer.exe
explorer.exe
goto :start
:en
en.reg
taskkill /f /im explorer.exe
explorer.exe
goto :start
:wrong
echo 非法的指令
TIMEOUT /T 5 /NOBREAK
echo off
goto :start
