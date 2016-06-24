$resourceGroup = 'Milestone2'
$deployment = 'D1'
$subscriptionName = 'Free Trial'
$location = 'North Europe'
$templateFile = 'template.json'
$parameterFile = 'parameters.json'

Add-AzureRmAccount
Set-AzureRmContext -SubscriptionName $subscriptionName

New-AzureRmResourceGroup -Name $resourceGroup -Location $location

New-AzureRmResourceGroupDeployment -Mode Complete -Name $deployment -ResourceGroupName $resourceGroup -TemplateFile $templateFile -TemplateParameterFile $parameterFile -Verbose
