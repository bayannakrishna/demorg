resource "azurerm_network_interface" "nic1" {
  name                = var.nic1_Name
  location            = var.location
  resource_group_name = var.rg

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.sub1.id
    private_ip_address_allocation = "Dynamic"
  }
}


resource "azurerm_network_interface" "nic2" {
  name                = var.nic2_Name
  location            = var.location
  resource_group_name = var.rg

  ip_configuration {
    name                          = "testconfiguration2"
    subnet_id                     = azurerm_subnet.sub2.id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_network_interface" "nic3" {
  name                = var.nic3_Name
  location            = var.location
  resource_group_name = var.rg

 ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.sub3.id
    private_ip_address_allocation = "Dynamic"
  }
}