$resourceGroup = 'Milestone2-9'
$deployment = 'D1'
$subscriptionName = 'Free Trial'
$location = 'North Europe'
$templateFile = 'template.json'
$parameterFile = 'parameters.json'

# Log in to account and specify the subscription type. This is necessary because a single account may have several subscriptions
Add-AzureRmAccount
Set-AzureRmContext -SubscriptionName $subscriptionName

#Create a new resource group. If the resource group to deploy to already exists, this step can be skipped.
#Note that if the resource group to be created already exists, the command prompts to update the resource group.
New-AzureRmResourceGroup -Name $resourceGroup -Location $location

#Deploy the ARM template.
New-AzureRmResourceGroupDeployment -Mode Complete -Name $deployment -ResourceGroupName $resourceGroup -TemplateFile $templateFile -TemplateParameterFile $parameterFile -Verbose


