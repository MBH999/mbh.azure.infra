resource "azurerm_resource_group" "this" {
  name     = "rg-mbh-dcr-test"
  location = "uksouth"
}

resource "random_password" "admin_password" {
  length  = 16
  special = true
  override_special = "!@#$%^&*()_+"
}

resource "azurerm_virtual_network" "this" {
  name                = "azvnet-dcr-test"
  address_space       = ["10.0.0.0/24"]
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
}

resource "azurerm_subnet" "this" {
  name                 = "azsubnet-dcr-test"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.0.0.0/27"]
}

resource "azurerm_network_interface" "this" {
  name                = "aznic-dcr-test"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.this.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "test1" {
  name = "azvm-lin-dcr-test1"
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location
  size = "Standard_B2pts_v2"
  admin_username = "azureuser"
  admin_password = random_password.admin_password.result
  disable_password_authentication = false
  network_interface_ids = [azurerm_network_interface.this.id]
  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}