variable "location" {
  type        = string
  description = "Location where resources will be created"
  default     = "indiacentral"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group where storage account will be created"
  default     = "tf-storage-rg"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account where the site will be hosted"
  default     = "storageblobsite123"
}

variable "index_document" {
  description = "The name of the index document"
  default     = "index.html"
}