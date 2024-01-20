$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$fileFullPath = Join-Path $toolsDir "$packageName.exe"
$url = 'https://github.com/jqlang/jq/releases/download/jq-1.7.1/jq-windows-i386.exe'
$checksumType = "sha256"
$checksum = 'e4efdd6a2c463ae714ed98fd5e874fe834a3a2380e17885bd4cda1c49e5166df'
$url64 = 'https://github.com/jqlang/jq/releases/download/jq-1.7.1/jq-windows-amd64.exe'
$checksumType64 = "sha256"
$checksum64 = '7451fbbf37feffb9bf262bd97c54f0da558c63f0748e64152dd87b0a07b6d6ab'

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
