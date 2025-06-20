terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.90.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {

  features {}
}

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "wordpress-deployment-rg"
  location = "eastus"
}

