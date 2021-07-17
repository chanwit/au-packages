
$installDir = Split-Path $MyInvocation.MyCommand.Definition
Write-Host "ekz cli is going to be installed in '$installDir'"

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName            = 'ekz'
  url64bit               = 'https://github.com/chanwit/ekz/releases/download/v0.7.0/ekz_0.7.0_windows_amd64.zip'
  checksum64             = 'e4a2963261f7948583641f58c07f470411abe0cf34785d1f7d0bb073be298efa'
  checksumType64         = 'sha256'
  unzipLocation          = $installDir
}
Install-ChocolateyZipPackage @packageArgs
