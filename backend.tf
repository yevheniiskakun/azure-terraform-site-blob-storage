terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "ststate897"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}