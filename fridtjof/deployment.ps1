$resourceGroup = 'R07'
$deployment = 'R07D'
$subscriptionName = 'Free Trial'
$location = 'North Europe'
$templateFile = 'template.json'
$parameterFile = 'parameters.json'

Add-AzureRmAccount
Set-AzureRmContext -SubscriptionName $subscriptionName

New-AzureRmResourceGroup -Name $resourceGroup -Location $location

New-AzureRmResourceGroupDeployment -Name $deployment -ResourceGroupName $resourceGroup -TemplateFile $templateFile -TemplateParameterFile $parameterFile
