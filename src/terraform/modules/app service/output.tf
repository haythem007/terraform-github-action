output "app_service_id" {
  description = "The ID of the App Service."
  value       = azurerm_app_service.example.id
}

output "app_service_name" {
  description = "The name of the App Service."
  value       = azurerm_app_service.example.name
}

output "app_service_default_hostname" {
  description = "The default hostname of the App Service."
  value       = azurerm_app_service.example.default_site_hostname
}
