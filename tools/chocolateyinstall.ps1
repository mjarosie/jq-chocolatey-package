$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$fileFullPath = Join-Path $toolsDir "$packageName.exe"
$url = 'https://github.com/jqlang/jq/releases/download/jq-1.8.1/jq-windows-i386.exe'
$checksumType = "sha256"
$checksum = '414ec99417830178bd2f6e77fc78b34de3b12fc6b6c3229f07038c5811307124'
$url64 = 'https://github.com/jqlang/jq/releases/download/jq-1.8.1/jq-windows-amd64.exe'
$checksumType64 = "sha256"
$checksum64 = '23cb60a1354eed6bcc8d9b9735e8c7b388cd1fdcb75726b93bc299ef22dd9334'

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
