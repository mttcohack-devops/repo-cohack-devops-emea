targetScope='subscription'

param suffix string = uniqueString(subscription().id)
param location string = deployment().location
param runNumber string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'rg-cohack-container-${suffix}'
  location: location
}

module coHackAcrModule 'acr-module.bicep' = {
  name: 'coHackAcrModule${runNumber}'
  scope: resourceGroup
  params: {
    location: location
    suffix: suffix
  }
}

output acrUsername string = coHackAcrModule.outputs.acrUsername
