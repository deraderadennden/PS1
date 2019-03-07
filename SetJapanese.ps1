#01

$dir_path   = "C:\Windows\Temp\"
$dir_dest   = $dir_path + $url_dlfile

$url_ms     = "http://download.windowsupdate.com/d/msdownload/update/software/updt/"
$url_yyyymm = "2018/04/"
$url_dlfile = "lp_bac048dbf02b9166cfc0fd1a926c241e64955d6f.cab"

$url_source = $url_ms + $url_yyyymm + $url_dlfile

#
Set-WinHomeLocation 122

#
Set-WinUserLanguageList ja-JP,en-US -Force

#
Start-BitsTransfer -Source $url_source -Destination $dir_path -Priority High

#
Add-WindowsPackage -Online -PackagePath $dir_dest

#
Set-WinLanguageBarOption -UseLegacySwitchMode -UseLegacyLanguageBar

#
Set-WinDefaultInputMethodOverride 

#
Set-WinUILanguageOverride -Language ja-JP




