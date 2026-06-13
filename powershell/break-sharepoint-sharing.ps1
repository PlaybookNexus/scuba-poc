# break-sharepoint-sharing.ps1
# Intentionally weakens SharePoint Online external sharing for SCuBA testing

Import-Module PnP.PowerShell -ErrorAction Stop

# Determine tenant admin URL dynamically
$tenant = (Get-MgOrganization).VerifiedDomains[0].Name
$short = $tenant.Split(".")[0]
$adminUrl = "https://$short-admin.sharepoint.com"

# Connect to SharePoint Admin Center
Connect-PnPOnline -Url $adminUrl -Interactive

# Set external sharing to "Anyone" (most permissive)
Set-PnPTenant `
  -SharingCapability ExternalUserAndGuestSharing `
  -RequireAcceptingAccountMatchInvitedAccount $false `
  -ShowEveryoneClaim $true `
  -ShowAllUsersClaim $true `
  -ShowEveryoneExceptExternalUsersClaim $true

"SharePoint external sharing has been intentionally weakened for SCuBA testing."