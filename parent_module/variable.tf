variable "subscription_id" {
  description = "The subscription ID where the resources will be created."
  type        = string
}

variable "rg" {
  description = "A map of resource group names and locations."
  type = map(object({
    name     = string
    location = string
  }))
}

variable "vnet" {
  description = "A map of virtual network names and locations."
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
}

variable "subnet" {
  description = "A map of virtual network names and locations."
  type = map(object({
    name             = string
    resource_group_name = string
    virtual_network_name = string
    address_prefixes = list(string)
  }))
}