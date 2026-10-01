@echo off
setlocal
cd /d "%~dp0"
if not exist node_modules (
  echo Installing dependencies...
  call npm install
  if errorlevel 1 (
    echo.
    echo npm install failed. Make sure Node.js and npm are installed and that you have internet access.
    pause
    exit /b 1
  )
)
call npm run dev
pause
