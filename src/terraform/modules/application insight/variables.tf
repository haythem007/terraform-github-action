variable "app_insights_name" {
  description = "The name of the Application Insights resource."
}

variable "location" {
  description = "The Azure region where the Application Insights resource will be created."
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Application Insights resource will be created."
}

variable "application_type" {
  description = "The type of the application for Application Insights (e.g., web, other)."
  default     = "web"
}
