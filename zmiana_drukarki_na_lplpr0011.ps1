

$registryPath = "HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows"
$Name = "Device"
$value = "\\lplsv0017\lplpr0011 - Ruda - 2 pietro - LWE,winspool,Ne03:"
IF(!(Test-Path $registryPath))

  {

    New-Item -Path $registryPath -Force | Out-Null

    New-ItemProperty -Path $registryPath -Name $name -Value $value `

    }

 ELSE {

    Set-ItemProperty -Path $registryPath -Name $name -Value $value `
    
}