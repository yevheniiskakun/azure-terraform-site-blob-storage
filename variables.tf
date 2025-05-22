variable "location" {
  type        = string
  description = "Location where resources will be created"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group where storage account will be created"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account where the site will be hosted"
}

variable "index_document" {
  type        = string
  description = "The name of the index document"
}

variable "source_content" {
  type        = string
  description = "Content of index file"
}