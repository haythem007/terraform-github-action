provider "azurerm" {
  features {}
}

resource "azurerm_servicebus_namespace" "example" {
  name                = var.service_bus_namespace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku      = "Standard"
}
