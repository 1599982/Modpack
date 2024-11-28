@echo off

set "pwd=%~dp0"
set "mcfolder=C:\Users\%USERNAME%\AppData\Roaming\.minecraft"

if not exist %mcfolder% (
	echo No existe la carpeta: .minecraft &	pause
	exit /b 1
)

for %%m in (supplementaries-1.20-3.1.0
			moonlight-1.20-2.13.21-forge
			friendsandfoes-forge-mc1.20.1-3.0.5
			voicechat-forge-1.20.1-2.5.25
			cc-tweaked-1.20.1-forge-1.113.1) do (
	del %mcfolder%\mods\%%m.jar
)

xcopy /e /i /y %pwd%\config %mcfolder%\config
xcopy /e /i /y %pwd%\mods %mcfolder%\mods

echo Se actualizaron los mods! & pause
