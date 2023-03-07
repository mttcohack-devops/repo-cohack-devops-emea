param location string = resourceGroup().location
param suffix string
param image string
param acrUsername string
param acrPass string

resource aci 'Microsoft.ContainerInstance/containerGroups@2022-09-01' = {
  name: 'aci-${suffix}'
  location: location
  properties: {
    containers: [
      {
        name: 'aci-${suffix}'
        properties: {
          image: image
          ports: [
            {
              port: 80
              protocol: 'TCP'
              
            }
          ]
          resources: {
            requests: {
              cpu: 1
              memoryInGB: 2
            }
          }
        }
      }
    ]
    osType: 'Linux'
    restartPolicy: 'OnFailure'
    ipAddress: {
      type: 'Public'
      ports: [
        {
          port: 80
          protocol:  'TCP'
        }
      ]
    }
    imageRegistryCredentials: [
      {
        server: '${acrUsername}.azurecr.io'
        username: acrUsername
        password: acrPass
      }
    ]
  }
}
