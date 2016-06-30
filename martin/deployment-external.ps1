#The resource group to deploy to
$resourceGroup = 'mile3'

#The name of the deployment
$deployment = 'D1'

# The name of the subscription used with this deployment
$subscriptionName = 'Free Trial'

# The location of the resource group
$location = 'North Europe'

# The link to the Uri containing the template
$templateUri = 'https://raw.githubusercontent.com/fridtjofhl/ARMtemplates/master/martin/milestone1.json'

# The link to the Uri containing the template parameters
$parameterUri = 'https://raw.githubusercontent.com/fridtjofhl/ARMtemplates/master/martin/milestone1-parameters.json'

# The deployment mode. Can be either Complete or Incremental
$mode = 'Complete'

# Log in to account and specify the subscription type. 
# This is necessary because a single account may have several subscriptions
Add-AzureRmAccount
Set-AzureRmContext -SubscriptionName $subscriptionName

# Create a new resource group.
# If the resource group to be created already exists, the command prompts to update the resource group.
New-AzureRmResourceGroup -Name $resourceGroup -Location $location

# Deploy the ARM template.
New-AzureRmResourceGroupDeployment -Mode $mode -Name $deployment -ResourceGroupName $resourceGroup -TemplateUri $templateUri -TemplateParameterUri $parameterUri -Verbose