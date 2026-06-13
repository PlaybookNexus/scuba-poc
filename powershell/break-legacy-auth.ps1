# break-legacy-auth.ps1
# Intentionally enables legacy authentication for SCuBA testing

Import-Module Microsoft.Graph.Authentication -ErrorAction Stop

# Connect with the minimum required scope
Connect-MgGraph -Scopes "Policy.ReadWrite.AuthenticationMethod" | Out-Null

# Enable legacy authentication (insecure baseline)
Update-MgPolicyAuthenticationMethodsPolicy -IsLegacyAuthAllowed $true

"Legacy authentication has been intentionally enabled for SCuBA testing."