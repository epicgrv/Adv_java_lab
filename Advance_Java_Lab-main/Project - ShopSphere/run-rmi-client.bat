@echo off
echo ===================================================
echo  ShopSphere RMI Client
echo ===================================================

set JAVA_21=%USERPROFILE%\.jdks\jdk-21.0.7+6\bin\java.exe
if exist "%JAVA_21%" (
    "%JAVA_21%" -cp "%~dp0shopsphere-rmi\target\shopsphere-rmi-1.0.0.jar" com.shopsphere.rmi.client.RmiClient
) else (
    java -cp "%~dp0shopsphere-rmi\target\shopsphere-rmi-1.0.0.jar" com.shopsphere.rmi.client.RmiClient
)
pause
