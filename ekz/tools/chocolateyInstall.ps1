
$installDir = Split-Path $MyInvocation.MyCommand.Definition
Write-Host "ekz cli is going to be installed in '$installDir'"

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName            = 'ekz'
  url64bit               = 'https://github.com/chanwit/ekz/releases/download/v0.3.0/ekz_0.3.0_windows_amd64.zip'
  checksum64             = '3df7b9016b4c97b604d4bdebd0f913d6a39faefbf59ca932f7503b81b85d76f1'
  checksumType64         = 'sha256'
  unzipLocation          = $installDir
}
Install-ChocolateyZipPackage @packageArgs
