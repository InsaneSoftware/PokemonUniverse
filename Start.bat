echo off
color 0A
cls
cd updater/cmd
git.exe pull
pause
cd %~dp0
start java\jre8\bin\javaw.exe -Djava.library.path=lib\native -jar PokemonUniverse.jar