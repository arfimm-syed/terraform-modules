resource "azurerm_nat_gateway" "nat" {
  for_each = var.nat_gw
  
  name                    = each.value.name
  location                = each.value.location
  resource_group_name     = each.value.resource_group_name
  sku_name                = each.value.sku_name
  idle_timeout_in_minutes = each.value.idle_timeout_in_minutes
  zones                   = each.value.zones
}

variable "nat_gw" {
  description = "A map of NAT gateway names and locations."
  type = map(object({
    name                    = string
    location                = string
    resource_group_name     = string
    sku_name                = string
    idle_timeout_in_minutes = number
    zones                   = list(string)
  }))
}