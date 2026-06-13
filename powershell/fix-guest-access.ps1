# fix-guest-access.ps1
# Disables guest invitations in Microsoft Entra ID

Import-Module Microsoft.Graph.Identity.SignIns -ErrorAction Stop

# Connect with the minimum required scope
Connect-MgGraph -Scopes "Policy.ReadWrite.Authorization" | Out-Null

# Disable guest invites
Set-MgPolicyAuthorizationPolicy -AllowInvitesFrom None

"Guest access has been disabled successfully."