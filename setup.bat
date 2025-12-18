@echo off
echo ==========================================
echo   Xgenia Web SDK - Setup & Run Script
echo ==========================================

:: Ensure we are in the script's directory
cd /d "%~dp0"

echo.
echo [Step 1] Installing dependencies...
call pnpm install
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to install dependencies. Please check if pnpm is installed.
    pause
    exit /b %errorlevel%
)

echo.
echo [Step 2] Starting all applications (Dev Mode)...
echo Running 'pnpm dev' which triggers 'turbo run dev'...
echo.
call pnpm dev

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Development server stopped with an error.
    pause
    exit /b %errorlevel%
)

pause
