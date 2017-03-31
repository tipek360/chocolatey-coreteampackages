$ErrorActionPreference = 'Stop';

$binRoot = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'http://www.nliteos.com/download/nLite-1.4.9.3.setup.exe'
  softwareName   = ''
  checksum = '3854C1B6C60F2F4A2B07C824661EA518444004C115C04F19415F0429E5B11E08'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT /DIR=$binRoot\nLite'
  validExitCodes = @(0)
  Options = @{
    Headers = @{
      referer = "http://www.nliteos.com/download.html"
    }
  }
}

Install-ChocolateyPackage @packageArgs
