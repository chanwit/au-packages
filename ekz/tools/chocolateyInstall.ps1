
$installDir = Split-Path $MyInvocation.MyCommand.Definition
Write-Host "ekz cli is going to be installed in '$installDir'"

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName            = 'ekz'
  url64bit               = 'https://github.com/chanwit/ekz/releases/download/v0.2.4/ekz_0.2.4_windows_amd64.zip'
  checksum64             = '7ea33cbbd2db7b6205b46043f9ab0ad5be2df180b22d01a731960eebae73705b'
  checksumType64         = 'sha256'
  unzipLocation          = $installDir
}
Install-ChocolateyZipPackage @packageArgs
