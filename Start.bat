@echo off

color 0A
echo Pokemon Universe Updater
echo.
echo Downloading updates...
echo.

rem Specify the path to the Git executable
set "gitPath=Updater\cmd\git.exe"

rem Check if the Git executable exists
if not exist "%gitPath%" (
    echo Git executable not found. Please provide the correct path.
    exit /b
)

rem Change the working directory to the root folder
cd /d "%~dp0"

rem Perform the Git pull
"%gitPath%" --work-tree=. pull origin main

cd %~dp0
start Java\jre8\bin\javaw.exe -Djava.library.path=lib\native -jar PokemonUniverse.jar
