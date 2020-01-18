#To deploy the list templates you need to first install the PNP PowerShell Commandlets#
$pnpInstalled = Get-Module SharePointPnPPowerShell* -ListAvailable | Select-Object Name,Version | Sort-Object Version -Descending
if($pnpInstalled -ne $null){
$siteURL = Read-Host -Prompt 'Enter the SharePoint Site URL that you want to deploy the lists to'

$path = Read-Host -Prompt 'Enter the complete path (file name included) of the list template you want to deploy'

Connect-PnPOnline -Url $siteURL -UseWebLogin

Apply-PnPProvisioningTemplate -path $path
}
else {
Install-Module SharePointPnPPowerShellOnline
$siteURL = Read-Host -Prompt 'Enter the SharePoint Site URL that you want to deploy the lists to'

$path = Read-Host -Prompt 'Enter the complete path (file name included) of the list template you want to deploy'

Connect-PnPOnline -Url $siteURL -UseWebLogin

Apply-PnPProvisioningTemplate -path $path

}