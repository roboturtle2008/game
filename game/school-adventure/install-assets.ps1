$ErrorActionPreference = 'Stop'
$source = 'C:\Users\yulan\.codex\generated_images\01a040eb-f819-70f2-be7e-0099a53f77ae'
$destination = Join-Path $PSScriptRoot 'assets'

New-Item -ItemType Directory -Force -Path $destination | Out-Null

$files = @{
    'exec-42d531b5-a9bb-4c87-b710-d096e72c7201.png' = 'classroom.png'
    'exec-3a4886ba-0e02-46e6-a4fe-b7d188a2139d.png' = 'hallway.png'
    'exec-001e96aa-c06c-4972-b494-74ae1fe08f94.png' = 'power-room.png'
    'exec-95c7278c-9ac0-4f7e-a957-08bb8d4761e2.png' = 'characters-items.png'
}

foreach ($entry in $files.GetEnumerator()) {
    Copy-Item -Force -LiteralPath (Join-Path $source $entry.Key) -Destination (Join-Path $destination $entry.Value)
}

Write-Host 'All four game images were copied to assets.' -ForegroundColor Green
Get-ChildItem $destination -Filter '*.png' | Select-Object Name, Length
Read-Host 'Press Enter to close'
