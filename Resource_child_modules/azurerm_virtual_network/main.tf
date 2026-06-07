resource "azurerm_virtual_network" "vnet_dev" {
    for_each = var.vnet_dev
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    address_space = each.value.address_space
}