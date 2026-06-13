# break-admin-consent.ps1
# Intentionally weakens admin consent and app registration settings for SCuBA testing

Import-Module Microsoft.Graph.Identity.SignIns -ErrorAction Stop

# Connect with the minimum required scope
Connect-MgGraph -Scopes "Policy.ReadWrite.Authorization" | Out-Null

# Loosen default user permissions:
# - Allow users to create apps
# - Allow users to consent to apps
# - Allow users to read other users
Set-MgPolicyAuthorizationPolicy `
  -DefaultUserRolePermissions @{
      AllowedToCreateApps = $true
      AllowedToCreateSecurityGroups = $true
      AllowedToReadOtherUsers = $true
  }

"Admin consent and app registration settings have been intentionally weakened for SCuBA testing."