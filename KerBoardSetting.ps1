
#
$regpath = "HKLM:\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters"

#
Set-ItemProperty $regpath -Name "LayerDriver JPN" -Value "kbd106.dll"
Set-ItemProperty $regpath -Name "OverrideKeyboardIdentifier" -Value "PCAT_106KEY"
Set-ItemProperty $regpath -Name "OverrideKeyboardSubtype" -Value "2"
Set-ItemProperty $regpath -Name "OverrideKeyboardType" -Value "7"