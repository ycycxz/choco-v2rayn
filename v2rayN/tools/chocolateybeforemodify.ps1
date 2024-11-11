$ErrorActionPreference = 'Stop'
Get-Process -Name 'v2rayN' -ErrorAction SilentlyContinue | Stop-Process
Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\' -Name 'ProxyEnable' -Value 0
