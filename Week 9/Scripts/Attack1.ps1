function Encrypt-File {
    param (
        [string]$FilePath,
        [string]$KeyPath = "$env:Temp\aesencryptionkey.key"
    )

    # Generate a random AES key for encryption
    $key = New-Object byte[] 16
    [Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($key)
    [IO.File]::WriteAllBytes($KeyPath, $key)

    # Read the content of the original file
    $plaintext = Get-Content $FilePath -Raw

    # Create an AES object for encryption
    $aes = [System.Security.Cryptography.Aes]::Create()
    $aes.Key = $key
    $aes.GenerateIV()

    # Convert plaintext to bytes and encrypt
    $plaintextBytes = [System.Text.Encoding]::UTF8.GetBytes($plaintext)
    $encryptedBytes = $aes.CreateEncryptor().TransformFinalBlock($plaintextBytes, 0, $plaintextBytes.Length)

    # Overwrite the original file with the encrypted content
    [IO.File]::WriteAllBytes($FilePath, $encryptedBytes)
    Write-Host "File encrypted and saved as $FilePath"
}

# Encrypt the original testfile.txt
Encrypt-File -FilePath "$env:Temp\testfile.txt"
