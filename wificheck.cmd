@echo off
echo Wireless Adapter Diagnostic Tool
echo ================================
echo.

echo Checking if wireless service is running...
sc query WlanSvc | findstr "RUNNING"
if %errorlevel% neq 0 (
    echo WARNING: Wireless Service is not running!
    echo.
)

echo.
echo Listing available wireless interfaces...
echo.
netsh wlan show interfaces
echo.

echo.
echo Showing available networks...
echo.
netsh wlan show networks
echo.

echo.
echo Checking driver status...
echo.
netsh wlan show drivers
echo.

pause