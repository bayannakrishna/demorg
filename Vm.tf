variable "webvm" {
  type        = string
  description = "web vm name"
  default     = "webapp"

}

resource "azurerm_windows_virtual_machine" "WebVM" {
  name                = var.webvm
  resource_group_name = var.rg
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "Admin@1234567"
  network_interface_ids = [
    resource.azurerm_network_interface.nic1.id,
  ]



  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

resource "azurerm_windows_virtual_machine" "dbvm" {
  name                = "database"
  resource_group_name = var.rg
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "Admin@1234567"
  network_interface_ids = [
    resource.azurerm_network_interface.nic2.id,
  ]


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

resource "azurerm_windows_virtual_machine" "backvm" {
  name                = "backend"
  resource_group_name = var.rg
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "Admin@1234567"
  network_interface_ids = [
    resource.azurerm_network_interface.nic3.id,
  ]


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}