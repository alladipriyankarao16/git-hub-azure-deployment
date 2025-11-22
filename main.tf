# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used for my repo
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
   backend "azurerm" {
      resource_group_name  = "rg-sqlmi-abipriya001"
      storage_account_name = "priyaabiterra"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
   }
}

provider "azurerm"{
  features {
    subscription_id = var.subscription_id
  }
}




resource "azurerm_resource_group" "example" {
  name     = "test-github-rg"
  location = "australiaeast"
}