$ErrorActionPreference = 'Stop'
$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/rsw-digital/screen-markup/releases/download/v0.3.16/ScreenMarkupSetup.exe'
  checksum64     = '40D87BF63A53B723EF763B10FFC30D64FB7E240404B091CA79808CB5DFAE595E'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Screen Markup*'
}
Install-ChocolateyPackage @packageArgs
