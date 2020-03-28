resource "azurerm_mysql_server" "example" {
  name                = "mysql-terraformserver-1"
  location            = "west US"
  resource_group_name = "TFResourceGroup"


    sku_name     = "B_Gen5_2"
  

  storage_profile {
    storage_mb            = 5120
    backup_retention_days = 7
    geo_redundant_backup  = "Disabled"
  }

  administrator_login          = "mysqladmin"
  administrator_login_password = "pwdgoeshere"
  version                      = "5.7"
  ssl_enforcement              = "Enabled"
}

resource "azurerm_mysql_database" "example" {
  name                = "exampledb"
  resource_group_name = "TFResourceGroup"
  server_name         = azurerm_mysql_server.example.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}
