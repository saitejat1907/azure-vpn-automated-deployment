resource "azurerm_resource_group" "example" {
  name     = "example-resources-jenkins"
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network-jenkins"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_managed_disk" "example" {
  name                 = "acctestmd-jenkins"
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"

  tags = {
    environment = "staging"
  }
}
