# Caso Práctico 2 - Terraform


# configuración del provider de Azure
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.0.0"
    }
  }
  required_version = ">= 1.1.0"
}

# Configuración del RG
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

# Creación del resource group del caso práctico 2
resource "azurerm_resource_group" "rg" {
  name     = "caso_practico_2_rg"
  location = var.location
  tags     = var.cp_tag
}
