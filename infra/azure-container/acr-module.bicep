param location string = resourceGroup().location
param suffix string

resource acr 'Microsoft.ContainerRegistry/registries@2022-12-01' = {
  name: 'acr${suffix}'
  location: location
  sku: {
    name: 'Basic'
  }
  properties: {
    adminUserEnabled: true
  }
}

output acrUsername string = acr.name
