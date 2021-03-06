@echo off
cls
echo Would you like to install KnockoffSnake? [y][n]
set /p confirm=
if not "%confirm%" == "y" (
	goto end
)
cd %USERPROFILE%
echo Creating file folder...
mkdir KnockoffSnake
cd KnockoffSnake
mkdir SnakeRemastered
cd %USERPROFILE%/Downloads/KnockoffSnake-master/KnockoffSnake-master
echo Installing images...
move Data %USERPROFILE%/KnockoffSnake/SnakeRemastered
echo Installing coin file...
move Coins.pde %USERPROFILE%/KnockoffSnake/SnakeRemastered
echo Installing enemy file...
move Object.pde %USERPROFILE%/KnockoffSnake/SnakeRemastered
echo Installing player file...
move Player.pde %USERPROFILE%/KnockoffSnake/SnakeRemastered
echo Installing main file...
move SnakeRemastered.pde %USERPROFILE%/KnockoffSnake/SnakeRemastered
echo Installing uninstaller...
move KnockoffSnakeUninstaller.bat %USERPROFILE%/KnockoffSnake
echo Installing launcher...
move KnockoffSnakeLauncher.bat %USERPROFILE%/KnockoffSnake
pause
echo Would you like to add a desktop shortcut? [y][n]
set /p shortcut=
if "%shortcut%" == "y" (
	echo Installing desktop icon...
	cd %USERPROFILE%/Downloads/KnockoffSnake-master/KnockoffSnake-master
	move KnockoffSnakeDesktop.bat %USERPROFILE%/Desktop
)
pause
echo Installation complete. Do you have a copy of Prosessing installed? [y][n]
set /p haveprocessing=
if not "%haveprocessing%" == "y" (
	echo Please install Processing before running this program. Otherwise, it will not work.
)
if "%haveprocessing%" == "y" (
	echo You may now run the program.
)
pause
end:
exit