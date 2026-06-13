# fix-sharepoint-sharing.ps1
# Hardens SharePoint Online external sharing settings

Import-Module PnP.PowerShell -ErrorAction Stop

# Connect to SharePoint Admin Center
$adminUrl = "https://$(Get-MgOrganization).VerifiedDomains[0].Name -replace '\..*$', '').sharepoint.com"
$adminUrl = "https://$($adminUrl)-admin.sharepoint.com"

Connect-PnPOnline -Url $adminUrl -Interactive

# Set external sharing to "Existing guests only"
Set-PnPTenant `
  -SharingCapability ExistingExternalUserSharingOnly `
  -RequireAcceptingAccountMatchInvitedAccount $true `
  -ShowEveryoneClaim $false `
  -ShowAllUsersClaim $false `
  -ShowEveryoneExceptExternalUsersClaim $false

"SharePoint external sharing has been hardened successfully."