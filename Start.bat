echo off
color 0A
cls
cd res/cmd
git.exe pull
cd %~dp0
start Java\jre8\bin\javaw.exe -Djava.library.path=lib\native -jar PokemonUniverse.jar