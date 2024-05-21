provider "azurerm" {
  features {}
}

resource "azurerm_app_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = var.app_service_plan_kind
  sku {
    tier = var.app_service_plan_tier
    size = var.app_service_plan_size
  }
}