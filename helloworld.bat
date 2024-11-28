@echo off

:: Paths
set SRC=src
set BUILD=build

:: Output executable name
set OUTPUT=moo.exe

:: Compile
cl /EHsc /Fe%OUTPUT% %SRC%\main.cpp 
if %errorlevel% neq 0 (
    echo Compilation failed.
    exit /b %errorlevel%
)

:: Move executable to the build directory
if not exist %BUILD% (
    mkdir %BUILD%
)

move %OUTPUT% %BUILD%
if %errorlevel% neq 0 (
    echo Moving executable failed.
    exit /b %errorlevel%
)

echo Build successful! Executable is located in %BUILD%\%OUTPUT%.
