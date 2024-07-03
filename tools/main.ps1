# install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# call the scripts to install the tools
# check if chocolatey is installed
if (Get-Command choco -ErrorAction SilentlyContinue) {
    # tools/browsers.ps1    
    . .\tools\browsers.ps1
    # tools/tooling.ps1
    . .\tools\tooling.ps1
    # tools/ides.ps1
    . .\tools\ides.ps1
}