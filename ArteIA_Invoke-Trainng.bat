
@echo off
setlocal enabledelayedexpansion
echo :::'###::::'########::'########:'########:'####::::'###::::
echo ::'## ##::: ##.... ##:... ##..:: ##.....::. ##::::'## ##:::
echo :'##:. ##:: ##:::: ##:::: ##:::: ##:::::::: ##:::'##:. ##::
echo '##:::. ##: ########::::: ##:::: ######:::: ##::'##:::. ##:
echo  #########: ##.. ##:::::: ##:::: ##...::::: ##:: #########:
echo  ##.... ##: ##::. ##::::: ##:::: ##:::::::: ##:: ##.... ##:
echo  ##:::: ##: ##:::. ##:::: ##:::: ########:'####: ##:::: ##:
echo ..:::::..::..:::::..:::::..:::::........::....::..:::::..::
echo.

echo ========================================================
echo           ARTEIA - INVOKE TRAINING - INSTALADOR              
echo ========================================================
echo. 
echo Este instalador usara la carpeta donde esta guardado este archivo.
echo.
echo Selecciona una opcion:
echo 1 - Instalar entorno (solo la primera vez)
echo 2 - Ejecutar entorno existente y abrir la interfaz web
echo.

set /p option=Introduce tu opcion [1/2]: 

REM === Detectar ruta base del .bat ===
set basePath=%~dp0
cd /d "%basePath%"

if "!option!"=="1" goto install
if "!option!"=="2" goto execute
echo Opcion no valida.
pause
exit /b

:install
echo === INSTALACION DE ARTEIA TRAINING ===
echo Carpeta base: !basePath!

REM === Verificar Python ===
where python >nul 2>&1
if errorlevel 1 (
    echo Python no esta instalado. Descargando...
    curl -o python-installer.exe https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe
    start /wait python-installer.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
) else (
    echo Python ya esta instalado.
)

REM === Verificar Git ===
where git >nul 2>&1
if errorlevel 1 (
    echo Git no esta instalado. Descargando...
    curl -o git-installer.exe https://github.com/git-for-windows/git/releases/download/v2.42.0.windows.1/Git-2.42.0-64-bit.exe
    start /wait git-installer.exe /VERYSILENT /NORESTART
) else (
    echo Git ya esta instalado.
)

REM === Clonar e instalar ===
git clone https://github.com/invoke-ai/invoke-training.git
cd invoke-training
python -m venv invoketraining
call invoketraining\Scripts\activate
python -m pip install --upgrade pip

echo.
echo ====================================================
echo ¿Que tipo de instalacion deseas usar?
echo.
echo 1 - Tengo GPU NVIDIA (recomendado si tienes CUDA)
echo 2 - Usar solo la CPU
echo 3 - No lo se / dejar que invoke lo decida
echo ====================================================
echo.

set /p installOpt=Introduce tu opcion [1/2/3]: 

if "!installOpt!"=="1" (
    echo Instalando dependencias para GPU NVIDIA...
    pip install ".[test]" --extra-index-url https://download.pytorch.org/whl/cu126
) else if "!installOpt!"=="2" (
    echo Instalando dependencias para CPU...
    pip install ".[test]" --extra-index-url https://download.pytorch.org/whl/cpu
) else (
    echo Instalación generica seleccionada...
    pip install ".[test]"
)

echo =====================================
echo INSTALACION COMPLETADA.
echo Para activar el entorno manualmente en el futuro, usa:
echo     call invoketraining\Scripts\activate
echo =====================================
pause
exit /b

:execute
echo === ACTIVANDO ENTORNO ===
cd invoke-training
call invoketraining\Scripts\activate
echo.
echo Entorno activado correctamente. Lanzando la interfaz web...
invoke-train-ui
