provider "azurerm" {
  features {}
}

resource "azurerm_application_insights" "example" {
  name                = var.app_insights_name
  location            = var.location
  resource_group_name = var.resource_group_name

  application_type = var.application_type

  tags = {
    environment = "production"
  }
}
