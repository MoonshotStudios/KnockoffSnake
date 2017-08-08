@echo off
cls
cd /d %USERPROFILE%
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
echo
echo Would you like to add a desktop shortcut? [y][n]
set /p shortcut=
echo %shortcut%=="y" (
	cd %USERPROFILE%/Downloads/KnockoffSnake-master/KnockoffSnake-master
	move KnockoffSnakeDesktop.bat %USERPROFILE%/Desktop
)
echo Installation complete. Do you have a copy of Prosessing installed? [y][n]
set /p haveprocessing=
if not haveprocessing=="y" (
	echo Please install Processing before running this program. Otherwise, it will not work.
)
if haveprocessing=="y" (
	echo You may now run the program.
)