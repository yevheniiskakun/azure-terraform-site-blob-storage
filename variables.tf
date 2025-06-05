variable "location" {
  type        = string
  description = "Location where resources will be created"
  default = "centralindia"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group where storage account will be created"
  default = "prod-rg-terraform-azure"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account where the site will be hosted"
  default = "storageblobsite3456w"
}

variable "index_document" {
  type        = string
  description = "The name of the index document"
  default = "index.html"
}

variable "source_content" {
  type        = string
  description = "Content of index file"
  default = "<h1>Hello World</h1>"
}