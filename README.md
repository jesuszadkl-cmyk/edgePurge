# Edge Purge Script

🔥 This PowerShell script forcefully uninstalls and removes **Microsoft Edge**, **EdgeCore**, and **EdgeUpdate** from Windows systems — without touching **Edge WebView2**, which is required by many applications.

## ⚠️ Disclaimer

This script is provided **as-is** and should be used **at your own risk**. It modifies system files and permissions. Do **not** use it unless you understand the potential consequences.

> **Note:** Edge WebView2 is intentionally preserved to avoid breaking applications like Microsoft Teams, Discord, WhatsApp Desktop, Spotify, etc.

## 💻 What It Does

- Uninstalls Microsoft Edge (Chromium)
- Terminates Edge-related processes (msedge, EdgeUpdate, EdgeCore)
- Takes ownership and forcibly deletes:
  - `C:\Program Files (x86)\Microsoft\Edge`
  - `C:\Program Files (x86)\Microsoft\EdgeCore`
  - `C:\Program Files (x86)\Microsoft\EdgeUpdate`
  - `C:\Program Files\Microsoft\EdgeUpdate`
  - `%LOCALAPPDATA%\Microsoft\Edge`
- Deletes Start Menu shortcuts
- Leaves WebView2 untouched (`C:\Program Files (x86)\Microsoft\EdgeWebView`)

## 📦 Files

- `purge-edge.ps1`: The main PowerShell script to execute
- `LICENSE`: MIT License (see below)

## 🚀 How to Use

1. **Right-click** PowerShell > **Run as Administrator**
2. Run the script:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope Process
   .\purge-edge.ps1
