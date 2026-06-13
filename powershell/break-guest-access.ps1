# break-guest-access.ps1
# Intentionally weakens guest access settings for SCuBA testing

Import-Module Microsoft.Graph.Identity.SignIns -ErrorAction Stop

# Connect with the minimum required scope
Connect-MgGraph -Scopes "Policy.ReadWrite.Authorization" | Out-Null

# Allow guest invites from everyone (insecure baseline)
Set-MgPolicyAuthorizationPolicy -AllowInvitesFrom Everyone

"Guest access has been intentionally weakened for SCuBA testing."