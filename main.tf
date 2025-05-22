resource "azurerm_resource_group" "blob-site" {
  name     = var.resource_group_name
  location = var.location
}


resource "azurerm_storage_account" "blob-site" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.blob-site.name
  location                 = azurerm_resource_group.blob-site.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"

  static_website {
    index_document = "index.html"
  }

  tags = {
    environment = "Development"
  }
}


resource "azurerm_storage_blob" "blob-site" {
  name                   = var.index_document
  storage_account_name   = azurerm_storage_account.blob-site.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source_content         = "<h1>Hello World</h1>"
}