# Resource-1: Azure MySQL Server
resource "azurerm_mysql_server" "local" {
  name                = var.mysql_db_name
  location            = var.location
  resource_group_name = azurerm_resource_group.local.name

  administrator_login          = var.mysql_db_username
  administrator_login_password = var.mysql_db_password
  
  sku_name   = "GP_Gen5_2" 
  storage_mb = 5120
  version    = "8.0"

  auto_grow_enabled                 = true
  backup_retention_days             = 7
  geo_redundant_backup_enabled      = false
  infrastructure_encryption_enabled = false
  public_network_access_enabled     = true
  ssl_enforcement_enabled           = false
  ssl_minimal_tls_version_enforced  = "TLSEnforcementDisabled" 

}

# Resource-2: Azure MySQL Database / Schema
resource "azurerm_mysql_database" "local" {
  name                = var.mysql_db_schema
  resource_group_name = azurerm_resource_group.local.name
  server_name         = azurerm_mysql_server.local.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}

