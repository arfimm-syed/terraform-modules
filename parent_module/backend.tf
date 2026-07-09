terraform {
  backend "azurerm" {
    resource_group_name  = "rg-backend"
    storage_account_name = "arfimmltdstorage"
    container_name       = "prod-tfstate"
    key                  = "tfmodule.tfstate"
  }
}