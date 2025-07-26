output "public_ip" {
  value       = azurerm_public_ip.public_ip.ip_address
  description = "IP pública de la máquina virtual"
}

output "ssh_private_key" {
  value       = tls_private_key.ssh_key.private_key_pem
  sensitive   = true
  description = "Clave privada SSH para conectarse a la VM"
}
