module "rg" {
  source   = "../child_module/resource_group"
  rg = var.rg
  #   name     = each.value.name
  #   location = each.value.location
}

module "vnet" {
  source   = "../child_module/vnet"
  vnet = var.vnet
  depends_on = [module.rg]
  #   name                = each.value.name
  #   location            = each.value.location
  #   resource_group_name = each.value.resource_group_name
  #   address_space       = each.value.address_space
}