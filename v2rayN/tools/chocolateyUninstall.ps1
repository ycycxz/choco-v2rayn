$ErrorActionPreference = 'Stop'
$DesktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item -Recurse "$(Get-ToolsLocation)\$env:ChocolateyPackageName"  -Force
Remove-Item "$DesktopPath\v2rayN.lnk"
