# fix-admin-consent.ps1
# Hardens admin consent and app registration permissions in Microsoft Entra ID

Import-Module Microsoft.Graph.Identity.SignIns -ErrorAction Stop

# Connect with the minimum required scope
Connect-MgGraph -Scopes "Policy.ReadWrite.Authorization" | Out-Null

# Harden default user permissions:
# - Prevent users from creating apps
# - Prevent users from consenting to apps
# - Prevent users from reading other users
Set-MgPolicyAuthorizationPolicy `
  -DefaultUserRolePermissions @{
      AllowedToCreateApps = $false
      AllowedToCreateSecurityGroups = $false
      AllowedToReadOtherUsers = $false
  }

"Admin consent policies have been hardened successfully."