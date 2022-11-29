terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}


##Step to refer the existing resource group

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "demorg"
  location = "East us"
}




 