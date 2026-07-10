module "rg" {
  source = "../child_module/resource_group"
  rg     = var.rg
  #   name     = each.value.name
  #   location = each.value.location
}

module "vnet" {
  source     = "../child_module/vnet"
  vnet       = var.vnet
  depends_on = [module.rg]
  #   name                = each.value.name
  #   location            = each.value.location
  #   resource_group_name = each.value.resource_group_name
  #   address_space       = each.value.address_space
}

module "subnet" {
  source     = "../child_module/subnet"
  subnet     = var.subnet
  depends_on = [module.vnet, module.rg]

  #   name                 = each.value.name
  #   resource_group_name  = each.value.resource_group_name
  #   virtual_network_name = each.value.virtual_network_name
}

module "nic" {
  source     = "../child_module/nic"
  nics       = var.nics
  depends_on = [module.subnet, module.vnet, module.rg]
}

module "nsg" {
  source     = "../child_module/nsg"
  nsg        = var.nsg
  depends_on = [module.rg]
}

module "vm" {
  source     = "../child_module/vir_machine"
  vm         = var.vm
  depends_on = [module.nic, module.nsg, module.rg]
}