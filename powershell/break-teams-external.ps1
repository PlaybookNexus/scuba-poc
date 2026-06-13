# break-teams-external.ps1
# Intentionally enables external federation in Microsoft Teams for SCuBA testing

Import-Module MicrosoftTeams -ErrorAction Stop

# Connect to Teams
Connect-MicrosoftTeams | Out-Null

# Enable all external federation options (insecure baseline)
Set-CsTenantFederationConfiguration `
  -AllowFederatedUsers $true `
  -AllowPublicUsers $true `
  -AllowTeamsConsumer $true `
  -AllowTeamsConsumerInbound $true `
  -AllowSkypeBusinessUsers $true

"Teams external access has been intentionally opened for SCuBA testing."