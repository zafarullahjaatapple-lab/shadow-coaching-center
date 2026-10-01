@echo off
setlocal
cd /d "%~dp0"
echo Installing THE SHADOW ACADEMY Attendance System...
call npm install
if errorlevel 1 (
  echo.
  echo Installation failed. Check Node.js, npm, and your internet connection.
  pause
  exit /b 1
)
call npm run dev
pause
