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
    container_name       = "tfstate"
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

locals {
  default_resource_group_name = "rg-${var.resource_group_name}-t-001"
  default_app_service_plan_name = "asp-${var.app_service_plan_name}-t-001"
  default_app_service_name = "wa-${var.app_service_name}-t-001"
}


# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "rg-haythem-example-resources"
  location = "West Europe"
}

module "app_service_plan" {
  source                   = "./modules/app service plan"
  app_service_plan_name    = local.default_app_service_plan_name
  location                 = var.location
  resource_group_name      = var.resource_group_name
  app_service_plan_tier    = var.app_service_plan_tier
  app_service_plan_size    = var.app_service_plan_size
}


module "app_service" {
  source                    = "./modules/app service"
  app_service_name          = local.default_app_service_name
  location                  = var.location
  resource_group_name       = var.resource_group_name
  app_service_plan_id       = module.app_service_plan.app_service_plan_id
}
