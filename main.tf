terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.116.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  #resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {

  }
}

resource "azurerm_resource_group" "blob-site" {
  name     = "blob-site-recource-group"
  location = "West Europe"
}


resource "azurerm_storage_account" "blob-site" {
  name                     = "blob-site-storageaccount1234K"
  resource_group_name      = azurerm_resource_group.blob-site.name
  location                 = azurerm_resource_group.blob-site.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Development"
  }
}