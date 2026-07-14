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
    location             = "Australia East"
    virtual_network_name = "my-vnet"
    subnet_id            = "/subscriptions/bb58363f-64e2-4c89-9fe0-18a66a90b86b/resourceGroups/my-arfimm/providers/Microsoft.Network/virtualNetworks/my-vnet/subnets/my-subnet"
} 
nic2 = {
    name                 = "my-nic2"
    resource_group_name  = "my-arfimm"
    location             = "Australia East"
    virtual_network_name = "my-vnet"
    subnet_id            = "/subscriptions/bb58363f-64e2-4c89-9fe0-18a66a90b86b/resourceGroups/my-arfimm/providers/Microsoft.Network/virtualNetworks/my-vnet/subnets/my-subnet"
  }
 nic3 = {
    name                 = "my-nic3"
    resource_group_name  = "my-arfimm"
    location             = "Australia East"
    virtual_network_name = "my-vnet"
    subnet_id            = "/subscriptions/bb58363f-64e2-4c89-9fe0-18a66a90b86b/resourceGroups/my-arfimm/providers/Microsoft.Network/virtualNetworks/my-vnet/subnets/my-subnet"
  }
  nic4 = {
    name                 = "my-nic4"
    resource_group_name  = "my-arfimm"
    location             = "Australia East"
    virtual_network_name = "my-vnet"
    subnet_id            = "/subscriptions/bb58363f-64e2-4c89-9fe0-18a66a90b86b/resourceGroups/my-arfimm/providers/Microsoft.Network/virtualNetworks/my-vnet/subnets/my-subnet"
  }
}


nsg = {
  nsg1 = {
    name                = "my-nsg"
    location            = "Australia East"
    resource_group_name = "my-arfimm"
  }
}


vm = {
  vm1 = {
    name                = "my-vm"
    resource_group_name = "my-arfimm"
    location            = "Australia East"
    size                = "Standard_D2s_v3"
    admin_username      = "adminuser"
    network_interface_ids = [
      "/subscriptions/bb58363f-64e2-4c89-9fe0-18a66a90b86b/resourceGroups/my-arfimm/providers/Microsoft.Network/networkInterfaces/my-nic"
    ]
  }
}


nat_gw = {
  nat_gw1 = {
    name                    = "my-nat-gw"
    location                = "Australia East"
    resource_group_name     = "my-arfimm"
    sku_name                = "Standard"
    idle_timeout_in_minutes = 10
    zones                   = ["1"]
  }
}

public_ip = {
  ip1 = {
    name                = "my-public-ip"
    resource_group_name = "my-arfimm"
    location            = "Australia East"
    allocation_method   = "Static"
  }
}
