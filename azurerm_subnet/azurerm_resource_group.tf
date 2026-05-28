# resource "azurerm_resource_group" "subnet_rg" {
#   for_each = var.rg_subnet

#   name     = each.value.name
#   location = each.value.location
# }