resource "azurerm_recovery_services_vault" "vault" {
name			= "terraform-recovery-vault"
location		= "eastus"
resource_group_name	= "TFResourceGroup"
sku			= "Standard"
}
