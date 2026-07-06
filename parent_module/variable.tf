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