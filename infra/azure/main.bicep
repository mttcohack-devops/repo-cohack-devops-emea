targetScope='subscription'

param suffix string = uniqueString(subscription().id)
param location string = deployment().location
param runNumber string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'rg-cohack-${suffix}'
  location: location
}

module coHackModule 'module.bicep' = {
  name: 'coHackModule${runNumber}'
  scope: resourceGroup
  params: {
    suffix: suffix
    location: location
  }
}

output appServiceName string = coHackModule.outputs.appServiceName
