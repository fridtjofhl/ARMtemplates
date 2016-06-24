﻿$resourceGroup = 'R07'
$deployment = 'R07D'

$subscriptionName = 'Free Trial'
$location = 'North Europe'
$templateFile = 'milestone1-template.json'
$parameterFile = 'milestone1-parameters.json'

Add-AzureRmAccount
Set-AzureRmContext -SubscriptionName $subscriptionName

New-AzureRmResourceGroup -Name $resourceGroup -Location $location

New-AzureRmResourceGroupDeployment -Mode Complete -Name $deployment -ResourceGroupName $resourceGroup -TemplateFile $templateFile -TemplateParameterFile $parameterFile -Verbose
