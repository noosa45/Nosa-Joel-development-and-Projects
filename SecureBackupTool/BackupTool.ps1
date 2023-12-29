# This is a simple function to perform folder backup
function Backup-Folder {
    param (
        [string]$sourceFolder,
        [string]$destinationFolder
    )

    # This function creates the time stamp of the folder
    
    $timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
    $backupFolder = Join-Path $destinationFolder "Backup_$timestamp"

    # Copy files and subfolders
    Copy-Item -Path $sourceFolder -Destination $backupFolder -Recurse -Force

    Write-Host "Backup completed successfully. Files copied to: $backupFolder"
}

Write-Host "Welcome to the Backup Tool!"

# Get source and destination folder paths
$sourceFolder = Read-Host "Enter the path of the folder to backup"
$destinationFolder = Read-Host "Enter the path of the destination folder"

# Veryfying if source folder exists
if (Test-Path $sourceFolder -PathType Container) {
    if (-not (Test-Path $destinationFolder -PathType Container)) {
        New-Item -ItemType Directory -Path $destinationFolder | Out-Null
    }

    # Ask for user confirmation
    $confirmation = Read-Host "Do you want to proceed with the backup? (Y/N)"
    if ($confirmation -eq 'Y' -or $confirmation -eq 'y') {
        # Perform backup
        Backup-Folder -sourceFolder $sourceFolder -destinationFolder $destinationFolder
    }
    else {
        Write-Host "Backup operation aborted."
    }
} else {
    Write-Host "Source folder does not exist. Please provide a valid path."
}
