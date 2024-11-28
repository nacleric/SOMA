@echo off
setlocal

:: Set the paths
set INCLUDE_PATH=./include
set LIB_PATH=./lib/windows
set SRC_PATH=./src
set BUILD_PATH=./build

:: Create the build directory if it doesn't exist
if not exist "%BUILD_PATH%" mkdir "%BUILD_PATH%"

:: Output executable name
set OUTPUT=%BUILD_PATH%\SDL2App.exe

:: Compile the program
cl /EHsc /I"%INCLUDE_PATH%" "%SRC_PATH%\main.cpp" /Fe"%OUTPUT%" "%LIB_PATH%\SDL2.lib"

:: Check for successful build
if %errorlevel% neq 0 (
    echo Build failed. Please check the errors above.
    exit /b %errorlevel%
)

echo Build complete. Executable is located at %OUTPUT%.
pause
