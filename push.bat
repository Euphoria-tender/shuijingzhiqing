@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo  Push "shuijingzhiqing" to GitHub
echo ============================================
echo.

git config --global --add safe.directory "%CD%"

git remote remove origin >nul 2>&1
git remote add origin https://github.com/Euphoria-tender/shuijingzhiqing.git

echo Pushing to main ...
git push -u origin main

if errorlevel 1 (
  echo.
  echo [FAILED] Push did not complete.
  echo.
  echo If you are behind a proxy, set it first, for example:
  echo    git config --global http.proxy http://127.0.0.1:7890
  echo then run this file again.
  echo.
  echo If it asks for credentials, use your GitHub username and a
  echo Personal Access Token ^(repo scope^) as the password.
) else (
  echo.
  echo [OK] Done.
  echo Open: https://github.com/Euphoria-tender/shuijingzhiqing
)

echo.
pause
