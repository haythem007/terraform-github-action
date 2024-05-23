provider "azurerm" {
  features {}
}

resource "azurerm_app_service" "app" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id
}

variable "app_service_name" {
  description = "Name of the App Service"
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

variable "app_service_plan_id" {
  description = "ID of the App Service Plan"
  type        = string
}
