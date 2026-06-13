# fix-teams-external.ps1
# Hardens Microsoft Teams external access settings

Import-Module MicrosoftTeams -ErrorAction Stop

# Connect to Teams with the minimum required scope
Connect-MicrosoftTeams | Out-Null

# Disable external federation
Set-CsTenantFederationConfiguration `
  -AllowFederatedUsers $false `
  -AllowPublicUsers $false `
  -AllowTeamsConsumer $false `
  -AllowTeamsConsumerInbound $false `
  -AllowSkypeBusinessUsers $false

"Teams external access has been disabled successfully."