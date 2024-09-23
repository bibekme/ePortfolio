# Define the path to the Sysmon configuration file (in the same directory as the script)
$configPath = ".\sysmonconfig-export.xml"  # Update this if the config file has a different name

# Check if Sysmon is installed and available
if (Get-Command Sysmon -ErrorAction SilentlyContinue) {
    # Install Sysmon with the configuration file
    Write-Host "Installing Sysmon with the specified configuration..."
    Sysmon -c $configPath
    
    # Verify Sysmon installation and configuration application
    if ($?) {
        Write-Host "Sysmon configured successfully using $configPath."
    } else {
        Write-Host "Failed to apply the Sysmon configuration. Please check the config file and try again."
    }
} else {
    Write-Host "Sysmon is not installed or not found in the current directory. Please ensure Sysmon is available."
}

