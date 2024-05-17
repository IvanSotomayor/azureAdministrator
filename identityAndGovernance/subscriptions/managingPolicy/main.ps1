#Connect-AzAccount


#Created a new resource group, this rg will be the scope for our assignment
New-AzResourceGroup -Name 'lab01VMs' -Location 'Mexico Central'
$rg = Get-AzResourceGroup -Name 'lab01VMs' -Location 'Mexico Central'

#Use a built in policy definition and copy its ID (portal)
$definition = Get-AzPolicyDefinition -Id '/providers/Microsoft.Authorization/policyDefinitions/0a914e76-4921-4c19-b460-a2d36003525a'

#Assign policy definition to our scope (resource group)
New-AzPolicyAssignment -Scope $rg.ResourceId -PolicyDefinition $definition -name 'mustMatchBothLocations' -DisplayName 'Resource group location should match resources location'



