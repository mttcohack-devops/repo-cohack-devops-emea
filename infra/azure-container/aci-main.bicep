targetScope='subscription'

param suffix string = uniqueString(subscription().id)
param location string = deployment().location
param runNumber string
param image string
param acrUsername string
param acrPass string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'rg-cohack-container-${suffix}'
  location: location
}

module coHackAciModule 'aci-module.bicep' = {
  name: 'coHackAciModule${runNumber}'
  scope: resourceGroup
  params: {
    location: location
    suffix: suffix
    image: image
    acrUsername: acrUsername
    acrPass: acrPass
  }
}
