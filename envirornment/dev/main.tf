
module "azurerm_resource_group" {

  source = "../../child/azurerm_resource_group"

  rg = var.resourceGroup


}

module "azurerm_virtual_network" {

  depends_on = [module.azurerm_resource_group]

  source = "../../child/azurerm_virtual_network"

  vnets = var.virtualNetwork

}

module "azurerm_subnet" {

  depends_on = [module.azurerm_virtual_network, module.azurerm_resource_group]

  source = "../../child/azurerm_subnet"

  subnet = var.subNet

}