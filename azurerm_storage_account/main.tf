resource "azurerm_storage_account" "storage_acc" {
  # depends_on               = [azurerm_resource_group.rg_storage]
  for_each                 = var.storage_acc_name
  name                     = each.value.name
  resource_group_name      = each.value.azurerm_resource_group
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}

    