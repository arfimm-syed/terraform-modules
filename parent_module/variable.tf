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
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
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

variable "nsg" {
  description = "A map of nsg names and locations."
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}

variable "vm" {
  description = "A map of virtual machine names and locations."
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    size                = string
    admin_username      = string
    network_interface_ids = list(string)
  }))
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