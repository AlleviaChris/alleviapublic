$OSName = 'Windows 11 24H2 x64'
$OSEdition = 'Pro'
$OSActivation = 'Retail'
$OSLanguage = 'en-us'

Start-OSDCloud -OSName $OSName -OSEdition $OSEdition -OSActivation $OSActivation -OSLanguage $OSLanguage -ZTI

Write-Host -Message "OSDCloud Process Complete, Running Custom Actions From Script Before Reboot"

#Restart from WinPE

Write-Host -ForegroundColor Green 'Restarting in 20 seconds!'

Start-Sleep -Seconds 20

wpeutil reboot
