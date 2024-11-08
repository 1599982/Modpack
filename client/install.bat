@echo off

set "pwd=%~dp0"
set "mcfolder=C:\Users\%USERNAME%\AppData\Roaming\.minecraft"

if not exist %mcfolder% (
	echo No existe la carpeta: .minecraft &	pause
	exit /b 1
)

rmdir /s /q %mcfolder%\config 2 > nul
rmdir /s /q %mcfolder%\mods 2 > nul

xcopy /e /i /y %pwd%\config %mcfolder%\config
xcopy /e /i /y %pwd%\mods %mcfolder%\mods

echo Se actualizaron los mods! & pause
