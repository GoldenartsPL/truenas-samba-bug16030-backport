# Read-only evidence capture. Run on a Windows client with access to the relevant share.
$ErrorActionPreference = 'Continue'
Write-Host '=== Time / Windows ==='
Get-Date; Get-ComputerInfo | Select-Object OsName,OsVersion,WindowsVersion
Write-Host '=== Redirected folders ==='
[pscustomobject]@{ Desktop=[Environment]::GetFolderPath('Desktop'); Documents=[Environment]::GetFolderPath('MyDocuments') } | Format-List
Write-Host '=== SMB client connections ==='
Get-SmbConnection | Select-Object ServerName,ShareName,Dialect,UserName | Format-Table -AutoSize
Write-Host '=== Offline Files service ==='
Get-Service CscService -ErrorAction SilentlyContinue | Format-List
Write-Host '=== Recent Offline Files events (if channel exists) ==='
Get-WinEvent -ListLog '*OfflineFiles*' -ErrorAction SilentlyContinue | ForEach-Object { Get-WinEvent -LogName $_.LogName -MaxEvents 20 -ErrorAction SilentlyContinue | Select-Object TimeCreated,Id,LevelDisplayName,Message }
