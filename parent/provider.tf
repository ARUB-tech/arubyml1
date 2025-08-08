terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "arub-backend"
    storage_account_name = "arubstgback"
    container_name       = "arubcontainer"
    key                  = "new.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  subscription_id = "fadfa500-48fa-4d7d-ae72-215103d56b2f"
}
