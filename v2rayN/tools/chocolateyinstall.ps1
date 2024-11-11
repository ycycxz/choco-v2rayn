$ErrorActionPreference = 'Stop'

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
    $url_dl = 'https://github.com/2dust/v2rayN/releases/download/7.0.9/v2rayN-windows-64-With-Core.zip'
}
else {
    $url_dl = 'https://mirror.ghproxy.com/https://github.com/2dust/v2rayN/releases/download/7.0.9/v2rayN-windows-64-With-Core.zip'
}


$sha256 = "5aee202060b5b23b81bea2f98c7ff12d5f77dcb34cf10681a4501b38c2c0ca7f"

$DesktopPath = [Environment]::GetFolderPath("Desktop")

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    unzipLocation  = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"
    url64bit      = $url_dl
    checksum64    = $sha256
    checksumType  = 'SHA256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyShortcut -ShortcutFilePath "$DesktopPath\v2rayN.lnk" -TargetPath "$(Get-ToolsLocation)\$env:ChocolateyPackageName\v2rayN-With-Core\v2rayN.exe" -RunAsAdmin -PinToTaskbar
