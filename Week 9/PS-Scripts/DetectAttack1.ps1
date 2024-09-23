# Fetch the Sysmon logs for file modifications and display the first 10 in list format
Get-WinEvent -LogName "Microsoft-Windows-Sysmon/Operational" |
Where-Object { $_.Id -eq 11 -and $_.Message -like '*.txt*' } |
Select-Object TimeCreated, Id, Message -First 10 |
Format-List
