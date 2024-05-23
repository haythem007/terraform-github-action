terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }

 backend "azurerm" {
    resource_group_name  = "terraformrg"
    storage_account_name = "terraformstorage7c6c24c7"
    container_name       = "tfs"
    key                  = "dev.terraform.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  # subscription_id = var.subscription_id
  # client_id       = var.client_id
  # client_secret   = var.client_secret
  # tenant_id       = var.tenant_id
}


provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "app_service_plan" {
  source                = "./modules/app service/app_service_plan"
  app_service_plan_name = var.app_service_plan_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_tier            = var.sku_tier
  sku_size            = var.sku_size
}

module "app_service" {
  source              = "./modules/app service plan/app_service"
  app_service_name    = var.app_service_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = module.app_service_plan.app_service_plan_id
}
