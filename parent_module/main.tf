module "rg" {
  source   = "../child_module/resource_group"
  rg = var.rg
  #   name     = each.value.name
  #   location = each.value.location
}