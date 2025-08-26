# Ejecuta esto en PowerShell como Administrador

Write-Host "🔥 Forzando purga completa de Microsoft Edge..." -ForegroundColor Red

# Mata procesos Edge, EdgeCore, EdgeUpdate si existen
$processes = @("msedge", "MicrosoftEdgeUpdate", "EdgeUpdate", "EdgeCore")
foreach ($proc in $processes) {
    Get-Process -Name $proc -ErrorAction SilentlyContinue | ForEach-Object {
        try {
            $_.Kill()
            Write-Host "💀 Matado proceso: $proc"
        } catch {
            Write-Host "❌ No se pudo matar proceso: $proc"
        }
    }
}

# Define carpetas para borrar
$folders = @(
    "C:\Program Files (x86)\Microsoft\Edge",
    "C:\Users\$env:USERNAME\AppData\Local\Microsoft\Edge"
)

foreach ($folder in $folders) {
    if (Test-Path $folder) {

        # Cambiar propietario a tu usuario para poder borrar
        try {
            takeown /F $folder /R /D Y | Out-Null
            icacls $folder /grant "$($env:USERNAME):(OI)(CI)F" /T /C | Out-Null
            Write-Host "🔐 Permisos tomados para: $folder"
        } catch {
            Write-Host "❌ Error tomando permisos para: $folder"
        }

        # Forzar eliminación
        try {
            Remove-Item -LiteralPath $folder -Recurse -Force -ErrorAction Stop
            Write-Host "🗑️ Carpeta eliminada: $folder"
        } catch {
            Write-Host "❌ No se pudo eliminar: $folder"
        }
    } else {
        Write-Host "ℹ️ Carpeta no existe: $folder"
    }
}

Write-Host "🔥 Purga forzada terminada."
