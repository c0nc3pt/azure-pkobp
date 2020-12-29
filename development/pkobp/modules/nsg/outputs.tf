output "name" {
  value       = azurerm_network_security_group.pkobp_network_security_group.name
  description = "Nazwa NSG"
}

output "id" {
  value       = azurerm_network_security_group.pkobp_network_security_group.id
  description = "NSG ID"
}