
#!/bin/bash

echo "========================================================"
echo "         ARTEIA - INVOKE TRAINING - INSTALADOR"
echo "========================================================"
echo ""

# Verificar versión mínima de Python antes de todo
echo "Verificando versión de Python..."
python3_version=$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:3])))')

if ! python3 -c "import sys; exit(0 if sys.version_info >= (3,10) else 1)"; then
  echo ""
  echo "❌ Tu versión de Python es $python3_version"
  echo "Invoke Training requiere Python 3.10 o superior."
  echo ""
  echo "🔗 Puedes descargar Python 3.10.11 para macOS aquí:"
  echo "https://www.python.org/ftp/python/3.10.11/python-3.10.11-macos11.pkg"
  echo ""
  echo "Después de instalar la versión adecuada, vuelve a ejecutar este script."
  exit 1
fi

echo "✅ Versión de Python compatible: $python3_version"
echo ""

echo "Selecciona una opción:"
echo "1 - Instalar entorno (solo la primera vez)"
echo "2 - Ejecutar entorno existente y abrir la interfaz web"
echo ""

read -p "Introduce tu opción [1/2]: " option

# Detectar ruta base
base_path=$(dirname "$0")
cd "$base_path" || exit

if [ "$option" == "1" ]; then
    echo ""
    echo "¿Estás usando Mac o Linux?"
    echo "1 - Mac"
    echo "2 - Linux"
    echo ""
    read -p "Selecciona tu sistema [1/2]: " os_type

    echo ""
    echo "Verificando Git..."
    if ! command -v git &> /dev/null; then
        echo "Git no está instalado. Por favor instálalo antes de continuar."
        exit 1
    fi

    echo "Clonando invoke-training..."
    git clone https://github.com/invoke-ai/invoke-training.git
    cd invoke-training || exit
    python3 -m venv invoketraining
    source invoketraining/bin/activate
    python -m pip install --upgrade pip

    if [ "$os_type" == "1" ]; then
        echo "Instalando dependencias para CPU (Mac)..."
        pip install ".[test]" --extra-index-url https://download.pytorch.org/whl/cpu
    elif [ "$os_type" == "2" ]; then
        echo ""
        echo "¿Qué tipo de instalación deseas usar?"
        echo "1 - Tengo GPU NVIDIA (CUDA)"
        echo "2 - Usar solo CPU"
        echo "3 - No lo sé / dejar que pip lo decida"
        echo ""
        read -p "Introduce tu opción [1/2/3]: " gpu_opt

        if [ "$gpu_opt" == "1" ]; then
            pip install ".[test]" --extra-index-url https://download.pytorch.org/whl/cu126
        elif [ "$gpu_opt" == "2" ]; then
            pip install ".[test]" --extra-index-url https://download.pytorch.org/whl/cpu
        else
            pip install ".[test]"
        fi
    else
        echo "Opción no válida. Abortando."
        exit 1
    fi

    echo ""
    echo "======================================"
    echo "INSTALACIÓN COMPLETADA."
    echo "Para activar el entorno en el futuro, ejecuta:"
    echo "source invoke-training/invoketraining/bin/activate"
    echo "======================================"
    exit 0

elif [ "$option" == "2" ]; then
    echo "Activando entorno existente y lanzando la interfaz web..."
    cd invoke-training || exit
    source invoketraining/bin/activate
    invoke-train-ui
else
    echo "Opción no válida. Abortando."
    exit 1
fi
