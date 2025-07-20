<img src="https://github.com/arteia-ai/arteia-invokeai-colab/raw/main/assets/banner_github.jpg" alt="ArteIA - Genera imágenes con IA" style="width:100%;" />

# 🚀 Invoke Training – Instalador 1 Clic

Instala `invoke-training` de forma sencilla con solo ejecutar un script. Compatible con **Windows**, **Mac** y **Linux**.

Este instalador prepara todo lo necesario para entrenar modelos personalizados como **LoRA**, **Textual Inversion** o **DreamBooth**, directamente desde la terminal o la interfaz gráfica de `invoke-training`.

> ⚠️ **El instalador de Windows incluye Python y Git si no están presentes.**  
> En Mac y Linux se asume que ya los tienes instalados.
> 
> 🔄 [View english version / Ver en inglés](./README.en.md)

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


## 📘 Más información

**Documentación oficial de invoke-training:**  
👉 https://invoke-ai.github.io/invoke-training

---

## 📷 ¿Quieres ver cómo funciona?

🧠 *Pronto publicaré un video explicando el proceso paso a paso en el canal de ArteIA.*
