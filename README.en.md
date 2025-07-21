<img src="https://github.com/arteia-ai/arteia-invokeai-colab/raw/main/assets/banner_github.jpg" alt="ArteIA - Genera imágenes con IA" style="width:100%;" />


# 🚀 Invoke Training – 1 Click Installer

🔄 [Ver en español / View Spanish version](./README.md)

⚙️ This script simplifies the installation of [invoke-training](https://github.com/invoke-ai/invoke-training)

Install `invoke-training` easily by running a single script. Compatible with **Windows**, **Mac**, and **Linux**.

This installer sets up everything you need to train custom models like **LoRA**, **Textual Inversion**, or **DreamBooth**, either from the terminal or using the graphical interface provided by `invoke-training`.

> ⚠️ **The Windows installer includes Python and Git if they are not already installed.**  
> On Mac and Linux, The script checks if Git and Python 3.10 or higher is installed.


---

## ✅ What does this installer do?

- Clones the official `invoke-training` repository
- Automatically installs Python and Git on Windows (if missing)
- Sets up a virtual environment and installs all dependencies
- Lets you choose between launching the GUI or using the terminal
- Compatible with **Stable Diffusion 1.5** and **SDXL**

---

## 📦 Included files

- `install_windows.bat` – For Windows users  
- `install_mac_linux.sh` – For Mac and Linux users

---

## 💻 OS Compatibility

### 🪟 Windows

- The script checks if you have **Python 3.10** and **Git**
- If not, it downloads and installs them automatically
- Then it clones `invoke-training`, sets up a virtual environment, and launches the GUI

### 🍏 Mac / 🐧 Linux

- The script **checks if Python 3.10 or higher is installed**
- It does not install Git, but warns you if it’s missing
- Detects whether you are on Mac or Linux to adjust installation
- Lets you choose between CUDA, CPU, or a generic setup
- Automatically creates a virtual environment and launches the GUI with `invoke-train-ui`

> 🧠 *Both installers allow you to re-run the environment later using option 2.*

---

## 🧪 How to Run It

### 🪟 Windows  
Double-click the `install_windows.bat` file and follow the on-screen instructions. That’s it!

### 🍏 Mac  
Right-click on `install_mac_linux.sh`, select **"Open with Terminal"**, and follow the instructions.

### 🐧 Linux  
Open a terminal in the script’s folder and type:  
```bash
bash install_mac_linux.sh
```

---

## 📘 More Info

**Official invoke-training documentation:**  
👉 https://invoke-ai.github.io/invoke-training

---

## 📷 Want to see it in action?

🧠 *A video tutorial showing the step-by-step installation will be available soon on the ArteIA channel.*

🔧 Project by [ArteIA](https://www.youtube.com/@arteia)  
🎨 Tools, workflows, and tutorials about AI-generated art
