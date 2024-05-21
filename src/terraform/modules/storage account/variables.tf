variable "storage_account_name" {
  description = "The name of the storage account."
}

variable "resource_group_name" {
  description = "The name of the resource group in which the storage account will be created."
}

variable "location" {
  description = "The Azure region where the storage account will be created."
}

variable "storage_account_tier" {
  description = "The tier of the storage account."
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "The replication type of the storage account."
  default     = "LRS"
}
