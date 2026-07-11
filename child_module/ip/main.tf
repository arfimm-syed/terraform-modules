resource "azurerm_public_ip" "ip" {
    for_each = var.public_ip
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method

}

variable "public_ip" {
  description = "A map of public IP names and locations."
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}