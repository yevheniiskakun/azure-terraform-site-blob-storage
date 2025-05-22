terraform{
    backend "azurerm"{
        resource_group_name = "tf-state-rg"
        storage_account_name = "tfstateblobsite"
        container_name = "tfstate"
        key = "terraform.tfstate"
    }
}