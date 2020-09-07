$registryPath = "HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows"
$Name = "Device"
$value = "Fax,winspool,Ne02:"
IF(!(Test-Path $registryPath))

  {

    New-Item -Path $registryPath -Force | Out-Null

    New-ItemProperty -Path $registryPath -Name $name -Value $value `

    }

 ELSE {

    Set-ItemProperty -Path $registryPath -Name $name -Value $value `
    
}