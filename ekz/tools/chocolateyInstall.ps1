
$installDir = Split-Path $MyInvocation.MyCommand.Definition
Write-Host "ekz cli is going to be installed in '$installDir'"

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName            = 'ekz'
  url64bit               = 'https://github.com/chanwit/ekz/releases/download/v0.1.7/ekz_0.1.7_windows_amd64.zip'
  checksum64             = '47b3ebf4375ddbda7dfef6f6566c4926143fe66dc79f8977320815c45981cecf'
  checksumType64         = 'sha256'
  unzipLocation          = $installDir
}
Install-ChocolateyZipPackage @packageArgs
