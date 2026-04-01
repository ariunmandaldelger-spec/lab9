$source = "C:\ProgramData\MySQL\MySQL Server 8.0\Data\216-16.log"
$destination = "C:\Users\User\Desktop\audit_logs\216-16.log"
while ($true){
    Copy-Item $source -Destination $destination -Force
    Write-Host "Copied at $(Get-Date)" -ForegroundColor Green
    Start-Sleep -Seconds 3
}