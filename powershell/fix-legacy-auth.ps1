# fix-legacy-auth.ps1
# Disables legacy authentication in Microsoft Entra ID

Import-Module Microsoft.Graph.Authentication -ErrorAction Stop

# Connect with the minimum required scope
Connect-MgGraph -Scopes "Policy.ReadWrite.AuthenticationMethod" | Out-Null

# Disable legacy authentication
Update-MgPolicyAuthenticationMethodsPolicy -IsLegacyAuthAllowed $false

"Legacy authentication has been disabled successfully."