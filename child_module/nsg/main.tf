resource "network_security_group" "nsg" {
  for_each = var.nsg

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}

variable "nsg" {
  description = "A map of nsg names and locations."
  type = map(object({
    name     = string
    location = string
    resource_group_name = string
  }))
}
