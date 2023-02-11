@echo off

echo "    __  __ __   ____  ______       ____   ___  ____   ___    __ __ "
echo "   /  ]|  |  | /    ||      |     |    \ /  _]|    \ |   \  |  |  |"
echo "  /  / |  |  ||  o  ||      |     |  o  )  [_ |  D  )|    \ |  |  |"
echo " /  /  |  _  ||     ||_|  |_|     |   _/    _]|    / |  D  ||  |  |"
echo "/   \_ |  |  ||  _  |  |  |       |  | |   [_ |    \ |     ||  :  |"
echo "\     ||  |  ||  |  |  |  |       |  | |     ||  .  \|     ||     |"
echo " \____||__|__||__|__|  |__|       |__| |_____||__|\_||_____| \__,_|"
echo "                                                                   "
echo              "un chat s'est perdu sur votre ordinateur..."
echo "                                                                   "

REM
nim --version > nul 2>&1

REM
if %errorlevel% NEQ 0 (
    echo nim n'est pas installé sur cet ordinateur
    echo veuillez installer nim pour exécuter ce script
    exit /b 1
)

REM
nim c --run --hints:off test.nim

set /p URL= "ecrit l'url de ton webhook discord: "

REM
if "%URL:~0,7%" == "http://" goto write
if "%URL:~0,8%" == "https://" goto write
echo erreur: format d'url invalide

goto end

:write
echo %URL% > ..\identifiants\webhook-url.txt

:end