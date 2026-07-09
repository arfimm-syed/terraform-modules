resource "azurerm_network_interface" "nic" {
  for_each = var.nics

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location

  ip_configuration {
    name                          = "internal"
    subnet_id                     = each.value.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

variable "nics" {
  description = "Network interface configuration"

  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    subnet_id           = string
  }))
}