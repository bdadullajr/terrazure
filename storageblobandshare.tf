resource "azurerm_storage_account" "lab" {
name				= "newbofhdevstor"
resource_group_name		= "TFResourceGroup"
location			= "eastus"
account_tier			= "Standard"
account_replication_type	= "LRS"
}

resource "azurerm_storage_container" "lab" {
name 				= "blobcontainer4dev"
storage_account_name		= azurerm_storage_account.lab.name
container_access_type		= "private"
}

resource "azurerm_storage_blob" "lab" {
name				= "TerraformdevBlob"
storage_account_name		= azurerm_storage_account.lab.name
storage_container_name		= azurerm_storage_container.lab.name
type				= "Block"
}

resource "azurerm_storage_share" "lab" {
name 				= "terraformdevshare"
storage_account_name		= azurerm_storage_account.lab.name
quota				= 50
}
