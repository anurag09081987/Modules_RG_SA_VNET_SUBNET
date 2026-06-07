resource "azurerm_resource_group" "rg_dev" {
    for_each = var.rg_dev
    name = each.value.name
    location = each.value.location
    managed_by = each.value.managed_by
    tags = each.value.tag
}