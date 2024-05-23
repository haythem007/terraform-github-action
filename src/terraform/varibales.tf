variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Location of the resource group"
  type        = string
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
}

variable "app_service_name" {
  description = "Name of the App Service"
  type        = string
}

variable "sku_tier" {
  description = "SKU Tier for App Service Plan"
  type        = string
  default     = "Basic"
}

variable "sku_size" {
  description = "SKU Size for App Service Plan"
  type        = string
  default     = "B1"
}
