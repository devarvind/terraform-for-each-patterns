# resource "azurerm_resource_group" "rg_vnet" {
#   for_each = var.rg_name

#   name     = each.value.name
#   location = each.value.location
# }