<img src="https://github.com/arteia-ai/arteia-invokeai-colab/raw/main/assets/banner_github.jpg" alt="ArteIA - Genera imágenes con IA" style="width:100%;" />

# 🚀 Invoke Training – Instalador 1 Clic

🔄 [View english version / Ver en inglés](./README.en.md)

⚙️ Este script simplifica la instalación de [invoke-training](https://github.com/invoke-ai/invoke-training)

Instala `invoke-training` de forma sencilla con solo ejecutar un script. Compatible con **Windows**, **Mac** y **Linux**.

Este instalador prepara todo lo necesario para entrenar modelos personalizados como **LoRA**, **Textual Inversion** o **DreamBooth**, directamente desde la terminal o la interfaz gráfica de `invoke-training`.

> ⚠️ **El instalador de Windows incluye Python y Git si no están presentes.**  
> En Mac y Linux se comprueba que ya los tienes instalados.

---

## ✅ ¿Qué hace este instalador?

- Clona el repositorio oficial `invoke-training`
- Instala automáticamente Python y Git en Windows (si es necesario)
- Configura un entorno virtual y descarga las dependencias
- Te permite elegir si lanzar la interfaz gráfica o trabajar desde terminal
- Compatible con **Stable Diffusion 1.5** y **SDXL**

---

## 📦 Archivos incluidos

- `install_windows.bat` – Para usuarios de Windows  
- `install_mac_linux.sh` – Para usuarios de Mac y Linux

---

## 💻 Compatibilidad por sistema operativo

### 🪟 Windows

- El script comprueba si tienes **Python 3.10** y **Git**.
- Si no los tienes, los descarga e instala automáticamente.
- Luego clona `invoke-training`, crea un entorno virtual y lanza la interfaz web.

### 🍏 Mac / 🐧 Linux

- El script **verifica que tengas Python 3.10 o superior**.
- No instala Git, pero te avisa si no lo tienes instalado.
- Detecta si estás en Mac o Linux para ajustar la instalación.
- Permite elegir si usar CUDA, CPU o una instalación genérica.
- Crea el entorno virtual y lanza automáticamente la interfaz web con `invoke-train-ui`.

> 🧠 *Ambos instaladores permiten volver a ejecutar el entorno fácilmente más adelante con la opción 2.*

---

## 🧪 Cómo ejecutarlo

### 🪟 Windows  
Haz doble clic en el archivo `install_windows.bat` y sigue las instrucciones que aparecen en pantalla. ¡Así de fácil!

### 🍏 Mac  
Haz clic con el botón derecho en `install_mac_linux.sh`, selecciona **"Abrir con Terminal"** y sigue las instrucciones.

### 🐧 Linux  
Abre una terminal en la carpeta del archivo y escribe:  
```bash
bash install_mac_linux.sh
```

---

## 📘 Más información

**Documentación oficial de invoke-training:**  
👉 https://invoke-ai.github.io/invoke-training

---

## 📷 ¿Quieres ver cómo funciona?

🧠 *Pronto publicaré un video explicando el proceso paso a paso en el canal de ArteIA.*

🔧 Proyecto creado por [ArteIA](https://www.youtube.com/@arteia)  
🎨 Herramientas, flujos de trabajo y tutoriales sobre arte con IA
