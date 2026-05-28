module "resource_group" {
  source = "../../azurerm_resource_group"

  rg_name = var.rg_name
  
}
module "virtual_network" {
  depends_on = [module.resource_group]
  source = "../../azurerm_virtual_networks"

  rg_name = var.rg_name
  vnet_name = var.vnet_name
  }
module "subnet" {
  depends_on = [module.virtual_network]
  source = "../../azurerm_subnet"

    vnet_name = var.vnet_name
  subnet = var.subnet
}
module "storage_account" {
  depends_on = [module.resource_group]
  source = "../../azurerm_storage_account"

  rg_name = var.rg_name
  storage_acc_name = var.storage_acc_name

}
