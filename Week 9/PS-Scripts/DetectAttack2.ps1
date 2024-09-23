# Define the search parameters
$EventID = 13
$RegistryKeyPath = "*Run*"

# Filter and retrieve Sysmon logs for registry modifications (Event ID 13)
$SysmonLogs = Get-WinEvent -LogName "Microsoft-Windows-Sysmon/Operational" |
    Where-Object { $_.Id -eq $EventID -and $_.Message -like $RegistryKeyPath } |
    Select-Object -First 5

# Display the logs
if ($SysmonLogs) {
    Write-Host "Registry Modification Logs (Event ID 13):"
    $SysmonLogs | Format-List
} else {
    Write-Host "No registry modification events found for the specified Run key."
}
