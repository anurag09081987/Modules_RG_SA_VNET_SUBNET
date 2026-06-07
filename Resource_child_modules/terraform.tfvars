rg_dev = {
  rg-dev1 = {
    name       = "rg-dev1"
    location   = "central india"
    managed_by = "team1"
    tag = {
      owner = "devops"
    }
  }
  rg-dev2 = {
    name       = "rg-dev2"
    location   = "central india"
    managed_by = "team2"
    tag = {
      owner = "security"
    }
  }
}
sa_dev = {
  sa-dev-1 = {
    name                     = "b18g7sadev1"
    resource_group_name      = "rg-dev1"
    location                 = "central india"
    account_tier             = "Standard"
    account_replication_type = "ZRS"
  }
  sa-dev-2 = {
    name                     = "b18g7sadev2"
    resource_group_name      = "rg-dev2"
    location                 = "central india"
    account_tier             = "Standard"
    account_replication_type = "ZRS"
  }
}
vnet_dev = {
  "vnet-dev1" = {
    name                = "vnet-dev"
    resource_group_name = "rg-dev1"
    location            = "central india"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet_dev = {
  subnet1 = {
    name                 = "frontend_subnet"
    virtual_network_name = "vnet-dev"
    resource_group_name  = "rg-dev1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "backend_subnet"
    virtual_network_name = "vnet-dev"
    resource_group_name  = "rg-dev1"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
    name                 = "database_subnet"
    virtual_network_name = "vnet-dev"
    resource_group_name  = "rg-dev1"
    address_prefixes     = ["10.0.3.0/24"]
  }
}