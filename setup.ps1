$source = "$PSScriptRoot\alacritty.toml"
$target = "$env:APPDATA\alacritty\alacritty.toml"

Write-Host "📁 Ensuring target directory exists..."
New-Item -ItemType Directory -Force -Path (Split-Path $target) | Out-Null

Write-Host "🔗 Linking $source → $target"
New-Item -ItemType SymbolicLink -Path $target -Target $source -Force | Out-Null

Write-Host "✅ Alacritty config is now linked."

.\setup.ps1

