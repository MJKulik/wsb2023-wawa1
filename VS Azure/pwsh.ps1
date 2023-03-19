$resourcegroup = "rgtestps1"
$deploymentName = "rgtestps1-bicep"

New-AzResourceGroupDeployment $deploymentName -resourceGroupName $resourcegroup -TemplateFile "D:\VS Azure\bicep\storage.bicep"
