variable "rg_dev" {
  type = map(object({
    name       = string
    location   = string
    managed_by = string
    tag        = map(string)
  }))
}
variable "sa_dev" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}
variable "vnet_dev" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
  }))
}
variable "subnet_dev" {
    type = map(object({
        name = string
        virtual_network_name = string
        resource_group_name = string
        address_prefixes = list(string)
    }))
}