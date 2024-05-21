variable "app_service_name" {
  description = "The name of the App Service."
}

variable "location" {
  description = "The Azure region where the App Service will be created."
}

variable "resource_group_name" {
  description = "The name of the resource group in which the App Service will be created."
}

variable "app_service_plan_id" {
  description = "The ID of the App Service Plan to which the App Service will be associated."
}
