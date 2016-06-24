#OPPRETTE RESOURCEGROUP OG LEGGE TIL RESSURS

#Parametere
$resourceGroup = 'AzureDomene'
$deployment = 'Win2012'
$subscriptionName = 'Free Trial'
$location = 'North Europe'
$templateFile = 'template.json'
$parameterFile = 'parameters.json'

#Logger inn på Azurekonto
Add-AzureRmAccount
#Setter subscriptionID til miljøet
Set-AzureRmContext -SubscriptionName $subscriptionName
#Setter navn på ResourceGroup og lokasjon
New-AzureRmResourceGroup -Name $resourceGroup -Location $location
#Deploye en lokal Json tamplate
New-AzureRmResourceGroupDeployment -Name $deployment -ResourceGroupName $resourceGroup -TemplateFile $templateFile -TemplateParameterFile $parameterFile -Verbose

#Deploye en ekstern Json template fra URL
#New-AzureRmResourceGroupDeployment -Name $DeploymentName -ResourceGroupName $ResourceGroupName -TemplateUri $PathToTemplate