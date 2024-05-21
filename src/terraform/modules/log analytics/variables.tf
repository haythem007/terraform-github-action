variable "log_analytics_name" {
  description = "The name of the Log Analytics workspace."
}

variable "location" {
  description = "The Azure region where the Log Analytics workspace will be created."
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Log Analytics workspace will be created."
}

variable "log_analytics_sku" {
  description = "The SKU (pricing tier) of the Log Analytics workspace."
  default     = "PerGB2018"
}
