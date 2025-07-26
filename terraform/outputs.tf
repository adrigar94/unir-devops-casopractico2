output "public_ip" {
  value       = azurerm_public_ip.public_ip.ip_address
  description = "IP pública de la máquina virtual"
}

output "ssh_private_key" {
  value       = tls_private_key.ssh_key.private_key_pem
  sensitive   = true
  description = "Clave privada SSH para conectarse a la VM"
}

output "acr_login_server" {
  value       = azurerm_container_registry.acr.login_server
  description = "URL del Azure Container Registry para login y push/pull"
}

output "acr_admin_username" {
  value       = azurerm_container_registry.acr.admin_username
  description = "Usuario admin del ACR"
}

output "acr_admin_password" {
  value       = azurerm_container_registry.acr.admin_password
  description = "Contraseña admin del ACR"
  sensitive   = true
}
