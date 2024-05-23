provider "azurerm" {
  features {}
}

resource "azurerm_app_service_plan" "asp" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    tier = var.sku_tier
    size = var.sku_size
  }
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
}

variable "location" {
  description = "Location"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "sku_tier" {
  description = "SKU Tier"
  type        = string
  default     = "Basic"
}

variable "sku_size" {
  description = "SKU Size"
  type        = string
  default     = "B1"
}

output "app_service_plan_id" {
  value = azurerm_app_service_plan.asp.id
}
