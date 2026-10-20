@echo off
echo ===================================================
echo  ShopSphere TCP Socket Client (Interactive CLI)
echo ===================================================

set JAVA_21=%USERPROFILE%\.jdks\jdk-21.0.7+6\bin\java.exe
if exist "%JAVA_21%" (
    "%JAVA_21%" -cp "%~dp0shopsphere-network\target\shopsphere-network-1.0.0.jar" com.shopsphere.network.client.InventorySocketClient
) else (
    java -cp "%~dp0shopsphere-network\target\shopsphere-network-1.0.0.jar" com.shopsphere.network.client.InventorySocketClient
)
pause
