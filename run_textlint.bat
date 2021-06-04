echo off
chcp 65001
color 1f
echo.
echo ===========
echo.
echo textlint-lancher4ja
echo by @atsuyaw
echo.
echo ===========
echo.
pause
echo on
npx textract %1 | npx textlint --stdin
pause