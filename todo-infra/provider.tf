terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.0"
    }
  }
 backend "azurerm" {
    resource_group_name  = "polarish-tfstate-rg"
    storage_account_name = "polarishsa"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
}
}

provider "azurerm" {
  features {}
  subscription_id = "ae94c894-df83-4618-a58f-e8cf08dcd701"
}
