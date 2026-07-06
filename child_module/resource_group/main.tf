resource "azurerm_resource_group" "rg" {
for_each = var.rg
  name     = each.value.name
  location = each.value.location
}

variable "rg" {
  description = "Map of vnet names and locations."
  type = map(object({
    name     = string
    location = string
  }))
}