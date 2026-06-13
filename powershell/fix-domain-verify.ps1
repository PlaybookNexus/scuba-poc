# fix-domain-verify.ps1
# Attempts to verify the primary domain in Microsoft Entra ID

Import-Module Microsoft.Graph.Identity.DirectoryManagement -ErrorAction Stop

# Connect with the minimum required scope
Connect-MgGraph -Scopes "Directory.ReadWrite.All" | Out-Null

# Get all domains
$domains = Get-MgDomain

# Find the primary domain
$primary = $domains | Where-Object { $_.IsDefault -eq $true }

if (-not $primary) {
    "No primary domain found." 
    exit
}

# If already verified, nothing to do
if ($primary.IsVerified) {
    "Primary domain '$($primary.Id)' is already verified."
    exit
}

# Attempt verification
try {
    Confirm-MgDomain -DomainId $primary.Id -ErrorAction Stop
    "Primary domain '$($primary.Id)' has been verified successfully."
}
catch {
    "Domain verification failed: $($_.Exception.Message)"
}