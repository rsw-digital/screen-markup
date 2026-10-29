$ErrorActionPreference = 'Stop'
$uninst = Join-Path $env:LOCALAPPDATA 'Programs\Screen Markup\Uninstall.exe'
if (Test-Path $uninst) {
  $p = Start-Process -FilePath $uninst -ArgumentList '--uninstall','/S' -Wait -PassThru
  if ($p.ExitCode -ne 0) { throw "Uninstaller exited with code $($p.ExitCode)" }
} else { Write-Warning 'Screen Markup uninstaller not found; it may already be removed.' }
