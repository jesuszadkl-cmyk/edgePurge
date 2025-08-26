# 🧨 Edge Purge Script

This PowerShell script forcefully removes **Microsoft Edge**, **EdgeCore**, and **EdgeUpdate** from Windows systems — without touching **Edge WebView2**, which is required by many desktop applications.

---

## ⚠️ Disclaimer

This script is provided **as-is** and should be used **at your own risk**.

> **Edge WebView2 will NOT be removed.** Many apps rely on it (e.g., Discord, Microsoft Teams, WhatsApp Desktop, Spotify). The script preserves it intentionally.

---

## 💻 Features

- Uninstalls Microsoft Edge (Chromium)
- Terminates related processes:
  - `msedge`
  - `MicrosoftEdgeUpdate`
  - `EdgeCore`
- Forcefully deletes related folders:
  - `C:\Program Files (x86)\Microsoft\Edge`
  - `C:\Program Files (x86)\Microsoft\EdgeCore`
  - `C:\Program Files (x86)\Microsoft\EdgeUpdate`
  - `C:\Program Files\Microsoft\Edge`
  - `C:\Program Files\Microsoft\EdgeUpdate`
  - `%LOCALAPPDATA%\Microsoft\Edge`
- Deletes Start Menu shortcuts
- Leaves `EdgeWebView` intact

---

## 🚀 How to Use

1. **Right-click PowerShell** → **Run as administrator**
2. Optional: allow script execution temporarily

   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope Process
3: Run the script:

 ```
  .\purge-edge.ps1
 ```


Wait for completion. Restart your system if necessary.

---

## 📘 INFO

Este script fue generado con **ChatGPT-4 (OpenAI)** y proporcionado tal cual para uso libre y distribución.  
Distribuido públicamente por el usuario sin modificaciones manuales en el código original.

---

## 📦 How to Download and Use

To avoid errors and make it easier to run the script:

➡️ **Click "Code" button**  
➡️ Then select **"Download ZIP"**

After downloading:

1. **Extract the ZIP** file to any folder.
2. Open the extracted folder.
3. Right-click on `purge-edge.ps1` → select **"Run with PowerShell"** *(as administrator)*.
4. Follow the on-screen instructions.

> 💡 If you're comfortable with Git, you can also clone the repository — but downloading as ZIP is recommended for most users.


