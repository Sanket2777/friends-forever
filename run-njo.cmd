@echo off
setlocal

cd /d "%~dp0"

echo Starting NJO website...

if not exist "node_modules" (
  echo Installing dependencies...
  call npm install
  if errorlevel 1 goto error
)

echo.
echo The frontend website will run at the URL printed below.
echo Press Ctrl+C to stop the server.
echo.

call npm run dev
if errorlevel 1 goto error

goto end

:error
echo.
echo Failed to start the NJO website.
pause

:end
endlocal
