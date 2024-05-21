
provider "azurerm" {
  features {}
}

module "storage_account" {
  source                      = "../storage account"
  storage_account_name       = var.storage_account_name
  resource_group_name        = var.resource_group_name
  location                   = var.location
  storage_account_tier       = var.storage_account_tier
  storage_account_replication_type = var.storage_account_replication_type
}

resource "azurerm_function_app" "example" {
  name                       = var.function_app_name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  app_service_plan_id        = var.app_service_plan_id
  storage_account_name       = module.storage_account.storage_account_name
  storage_account_access_key = module.storage_account.primary_access_key
}
