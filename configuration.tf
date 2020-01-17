# Azure Provider
provider "azurerm" {
    version = "1.32.0"
}

# Create Resource Group
resource "azurerm_resource_group" "rg" {
    name = "myTF"
    location = "westeurope"

    tags = {
        environment = "TF sandbox"
    }
}
