resource "azurerm_subnet" "subnet" {
  for_each             = var.subnet

  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}

variable "subnet" {
  description = "A map of virtual network names and locations."
  type = map(object({
    name     = string
    resource_group_name = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}