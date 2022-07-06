resource "azurerm_resource_group" "local"{
    name = var.resourcegroup_name
    location = var.location
}