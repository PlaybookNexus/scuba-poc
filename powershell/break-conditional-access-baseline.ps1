# break-conditional-access-baseline.ps1
# Intentionally disables or removes baseline Conditional Access policies for SCuBA testing

Import-Module Microsoft.Graph.Identity.SignIns -ErrorAction Stop

# Connect with the minimum required scope
Connect-MgGraph -Scopes "Policy.ReadWrite.ConditionalAccess" | Out-Null

# Find the baseline policy created by the fix script
$policy = Get-MgIdentityConditionalAccessPolicy |
    Where-Object { $_.DisplayName -eq "Baseline - Require MFA for Administrators" }

if (-not $policy) {
    "No baseline Conditional Access policy found to break."
    exit
}

# Disable the policy (safer than deleting)
Update-MgIdentityConditionalAccessPolicy `
  -ConditionalAccessPolicyId $policy.Id `
  -State "disabled"

"Baseline Conditional Access policy has been intentionally disabled for SCuBA testing."