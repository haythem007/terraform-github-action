variable "function_app_name" {
  description = "The name of the Azure Function App."
}

variable "location" {
  description = "The Azure region where the Azure Function App will be created."
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Azure Function App will be created."
}

variable "app_service_plan_id" {
  description = "The ID of the App Service Plan to which the Azure Function App will be associated."
}

variable "storage_account_name" {
  description = "The name of the storage account for the Azure Function App."
}

variable "storage_account_tier" {
  description = "The tier of the storage account."
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "The replication type of the storage account."
  default     = "LRS"
}
