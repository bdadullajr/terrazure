resource "azurerm_storage_account" "sa" {
name				= "tfstorageaccounttesting"
resource_group_name		= "TFResourceGroup"
location			= "eastus"
account_tier			= "Standard"
account_replication_type	= "GRS"

tags = {
environment = "Terraform Storage"
CreatedBy = "TF Admin"
}
}
