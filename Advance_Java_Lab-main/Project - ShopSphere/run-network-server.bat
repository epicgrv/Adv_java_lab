@echo off
echo ===================================================
echo  ShopSphere TCP Socket Server (Port 9090)
echo ===================================================

set JAVA_21=%USERPROFILE%\.jdks\jdk-21.0.7+6\bin\java.exe
if exist "%JAVA_21%" (
    "%JAVA_21%" -cp "%~dp0shopsphere-network\target\shopsphere-network-1.0.0.jar" com.shopsphere.network.server.InventorySocketServer
) else (
    java -cp "%~dp0shopsphere-network\target\shopsphere-network-1.0.0.jar" com.shopsphere.network.server.InventorySocketServer
)
pause
