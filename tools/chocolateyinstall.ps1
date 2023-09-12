$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$fileFullPath = Join-Path $toolsDir "$packageName.exe"
$url = 'https://github.com/jqlang/jq/releases/download/jq-1.7/jq-windows-i386.exe'
$checksumType = "sha256"
$checksum = '9500d0300e28a930ab3430a101ca940038b8e82ca441f5c9a1fddaa9d1b770df'
$url64 = 'https://github.com/jqlang/jq/releases/download/jq-1.7/jq-windows-amd64.exe'
$checksumType64 = "sha256"
$checksum64 = '2e9cc54d0a5d098e2007decec1dbb3c555ca2f5aabded7aec907fe0ffe401aab'

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
