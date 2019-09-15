$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$fileFullPath = Join-Path $toolsDir "$packageName.exe"
$url = 'https://github.com/stedolan/jq/releases/download/jq-1.6/jq-win32.exe'
$checksumType = "sha512"
$checksum = 'CF4766BACA9CF5F072AE15E2E3D91E974403AB933B892B8D506DC1C3235CA70271971BE1AF13896A4EF1C79F57518ACB9497F0BFEE1CB1D9AC10E97422C30F96'
$url64 = 'https://github.com/stedolan/jq/releases/download/jq-1.6/jq-win64.exe'
$checksumType64 = "sha512"
$checksum64 = '58127BAE7B27D963CB4EC19779E5AB0938DB69190EC66985694320AF787E696A8ACD490B967255A7FED4C28EC6A2C2BFCD6EFBB5B85EC2A950B3E318113D5CDE'

$packageArgs = @{
    PackageName    = $env:ChocolateyPackageName
    FileFullPath   = $fileFullPath
    Url            = $url
    ChecksumType   = $checksumType
    Checksum       = $checksum
    Url64bit       = $url64
    ChecksumType64 = $checksumType64
    Checksum64     = $checksum64
}

Get-ChocolateyWebFile @packageArgs
