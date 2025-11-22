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
    # subscription_id = "6baeb535-5ac9-402f-83c4-4aed96077df6"
    # tenant_id = "594a0721-e458-40cc-98d9-edb9135f9148"
    # client_id = "321c961f-dd38-469f-b8f9-08e52f167819"
    # client_secret = "0Aj8Q~nsSel01PBgVuUYHd240Rivn~UnYVpEMdif"
  features {}
}




resource "azurerm_resource_group" "example" {
  name     = "test-github-rg"
  location = "australiaeast"
}