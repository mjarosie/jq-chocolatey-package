$ErrorActionPreference = 'Stop'

$version = '1.8.2'
$releaseBaseUrl = "https://github.com/jqlang/jq/releases/download/jq-$version"

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileFullPath = Join-Path $toolsDir "$packageName.exe"

$url = "$releaseBaseUrl/jq-windows-i386.exe"
$checksumType = 'sha256'
$checksum = 'a99cb668f95bdd788d9ee20529613b115e5d2a0d7f9127ee6976607e878558ba'

$url64 = "$releaseBaseUrl/jq-windows-amd64.exe"
$checksumType64 = 'sha256'
$checksum64 = 'a6fc67fedaf9128a3309a1e2ebb8b986aeccf70122ee46d2cb4849e423f0c627'

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
