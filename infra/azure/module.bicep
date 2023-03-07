param location string = resourceGroup().location
param suffix string

resource appServicePlan 'Microsoft.Web/serverfarms@2020-06-01' = {
  name: 'plan-cohack-${suffix}'
  location: location
  properties: {
    reserved: true
  }
  sku: {
    name: 'S1'
  }
  kind: 'linux'
}
resource appService 'Microsoft.Web/sites@2020-06-01' = {
  name: 'app-cohack-${suffix}'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      linuxFxVersion: 'DOTNETCORE|6.0'
    }
  }
}

output appServiceName string = appService.name
