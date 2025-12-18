@echo off
echo ==========================================
echo   Xgenia Web SDK - Run Script
echo ==========================================

:: Ensure we are in the script's directory
cd /d "%~dp0"

echo.
echo Starting all applications (Dev Mode)...
echo Running 'pnpm dev'...
echo.
call pnpm dev

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Development server stopped with an error.
    pause
    exit /b %errorlevel%
)

pause
