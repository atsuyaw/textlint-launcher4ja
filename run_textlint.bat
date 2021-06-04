echo off
chcp 932
color 1f
echo.
echo ===========
echo.
echo textlint Launcher
echo by @atsuyaw
echo.
echo ===========
echo.
pause
echo on
cd /d %~dp0
npx textract %1 | npx textlint --stdin
pause