@echo off

set back=%cd%
set pngquant=%cd%\pngquant.exe

for /d %%i in (.\*) do (
	cd "%%i"
	cd "Named_Boxarts"
	%pngquant% --quality 10-50 --force --ext .png *.png --verbose
	cd ..
	cd "Named_Snaps"
	%pngquant% --quality 10-50 --force --ext .png *.png --verbose
	cd ..
	cd "Named_Titles"
	%pngquant% --quality 10-50 --force --ext .png *.png --verbose
	cd ..
	cd %back%
	cls
)
cd %back%
echo Finished!