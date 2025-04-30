resource "azurerm_resource_group" "this" {
  name     = "rg-net-mbh-01"
  location = "uksouth"
}

resource "azurerm_virtual_network" "this" {
  name                = "vnet-mbh-01"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  address_space       = ["10.0.0.0/16"]
}