﻿#NOTE: Please remove any commented lines to tidy up prior to releasing the package, including this one

$packageName = 'tbb' # arbitrary name for the package, used in messages
$url = 'http://threadingbuildingblocks.org/sites/default/files/software_releases/windows/tbb41_20130314oss_win.zip' # download url
$url64 = $url # 64bit URL here or just use the same as $url
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

# download and unpack a zip file
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"
