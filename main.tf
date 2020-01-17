# Azure Provider
provider "azurerm" {
    version = "1.32.0"
}

# Create Resource Group
resource "azurerm_resource_group" "rg" {
    name = "myTFResourceGroup"
    location = "westeurope"

    tags = {
        environment = "TF sandbox"
    }
}

# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
    name                = "myTFVnet"
    address_space       = ["10.0.0.0/16"]
    location            = "westeurope"
    resource_group_name = azurerm_resource_roup.rg.name
}
