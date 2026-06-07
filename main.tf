module "rg_dev" {
  source = "./Resource_child_modules/azurerm_resource_group"
  rg_dev = var.rg_dev
}
module "sa_dev" {
  source     = "./Resource_child_modules/azurerm_storage_account"
  sa_dev     = var.sa_dev
  depends_on = [module.rg_dev]
}
module "vnet_dev" {
  source     = "./Resource_child_modules/azurerm_virtual_network"
  vnet_dev   = var.vnet_dev
  depends_on = [module.rg_dev]
}
module "subnet_dev" {
  source     = "./Resource_child_modules/azurerm_subnet"
  subnet_dev = var.subnet_dev
  depends_on = [module.vnet_dev]
}