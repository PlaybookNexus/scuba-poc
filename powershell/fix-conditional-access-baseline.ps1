# fix-conditional-access-baseline.ps1
# Creates a baseline Conditional Access policy requiring MFA for all administrators

Import-Module Microsoft.Graph.Identity.SignIns -ErrorAction Stop

# Connect with the minimum required scope
Connect-MgGraph -Scopes "Policy.ReadWrite.ConditionalAccess" | Out-Null

# Global Administrator role ID (fixed GUID in Entra ID)
$GlobalAdminRoleId = "62e90394-69f5-4237-9190-012177145e10"

# Create baseline CA policy
New-MgIdentityConditionalAccessPolicy `
  -DisplayName "Baseline - Require MFA for Administrators" `
  -State "enabled" `
  -Conditions @{
      Users = @{
          IncludeRoles = @($GlobalAdminRoleId)
      }
  } `
  -GrantControls @{
      Operator = "AND"
      BuiltInControls = @("mfa")
  }

"Baseline Conditional Access policy created successfully."