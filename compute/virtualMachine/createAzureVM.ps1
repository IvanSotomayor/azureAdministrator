Connect-AzAccount

New-AzResourceGroup -Name myDemoRG77 -Location 'Mexico Central'

New-AzVM -Name vmorsodemo77 -ResourceGroup myDemoRG77 -Location 'Mexico Central'

