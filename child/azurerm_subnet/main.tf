
resource azurerm_subnet "snets" {

  for_each = var.subnet

  name = each.value.name
  resource_group_name = each.value.rg
  virtual_network_name = each.value.name
  address_prefixes = each.value.address_prefixes

}