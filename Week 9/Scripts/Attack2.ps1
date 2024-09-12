# Define the registry path and key name for persistence
$RegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$RegistryKeyName = "FakeMalware"
$MalwarePath = "C:\fake\malware.exe"

# Simulate registry modification to establish persistence
Set-ItemProperty -Path $RegistryPath -Name $RegistryKeyName -Value $MalwarePath

# Confirm that the registry key was added successfully
$registryValue = Get-ItemProperty -Path $RegistryPath -Name $RegistryKeyName
Write-Host "Registry Key Added:" $registryValue

