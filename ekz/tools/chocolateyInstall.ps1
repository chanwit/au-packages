
$installDir = Split-Path $MyInvocation.MyCommand.Definition
Write-Host "ekz cli is going to be installed in '$installDir'"

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName            = 'ekz'
  url64bit               = 'https://github.com/chanwit/ekz/releases/download/v0.6.0/ekz_0.6.0_windows_amd64.zip'
  checksum64             = '5f4759f862dbd74bffe332e1d1f0463e3a51c469a3296d824a336b7aa520dfba'
  checksumType64         = 'sha256'
  unzipLocation          = $installDir
}
Install-ChocolateyZipPackage @packageArgs
