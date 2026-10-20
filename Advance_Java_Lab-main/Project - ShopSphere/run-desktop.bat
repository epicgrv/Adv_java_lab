@echo off
echo ===================================================
echo  ShopSphere Desktop Administration Suite (Swing)
echo ===================================================

:: Use Java 21 if system Java is too old
set JAVA_21=%USERPROFILE%\.jdks\jdk-21.0.7+6\bin\java.exe
if exist "%JAVA_21%" (
    "%JAVA_21%" -jar "%~dp0shopsphere-desktop\target\shopsphere-desktop-1.0.0.jar"
) else (
    java -jar "%~dp0shopsphere-desktop\target\shopsphere-desktop-1.0.0.jar"
)
pause
