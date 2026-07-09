subscription_id = "bb58363f-64e2-4c89-9fe0-18a66a90b86b"

rg = {
  rg1 = {
    name     = "my-arfimm"
    location = "Australia East"
  }
}

vnet = {
  vnet1 = {
    name                = "my-vnet"
    location            = "Australia East"
    address_space       = ["10.0.0.0/16"]
    resource_group_name = "my-arfimm"
  }
}

subnet = {
  subnet1 = {
    name                 = "my-subnet"
    resource_group_name  = "my-arfimm"
    virtual_network_name = "my-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

nics = {
  nic1 = {
    name                 = "my-nic"
    resource_group_name  = "my-arfimm"
    virtual_network_name = "my-vnet"
    subnet_id = "/subscriptions/bb58363f-64e2-4c89-9fe0-18a66a90b86b/resourceGroups/my-arfimm/providers/Microsoft.Network/virtualNetworks/my-vnet/subnets/my-subnet"
} }