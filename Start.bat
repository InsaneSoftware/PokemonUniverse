echo off
color 0A
cls
Java\jre8\bin\java.exe -Djava.library.path=lib\native -jar res/updater.jar
start Java\jre8\bin\javaw.exe -Djava.library.path=lib\native -jar PokemonUniverse.jar