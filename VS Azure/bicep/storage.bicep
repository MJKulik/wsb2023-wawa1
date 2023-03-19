param location string = resourceGroup().location


@minLength(3)
@maxLength(24)
param stgname string 

var storagename = toLower(stgname)

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storagename
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}
