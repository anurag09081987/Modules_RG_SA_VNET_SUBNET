terraform {
  required_providers {
    azurerm = {
      source  = "registry.terraform.io/hashicorp/azurerm"
      version = "4.74.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "c17b6032-f4e9-4d92-8344-97d2e50eb0b2"
}