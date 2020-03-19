#This will create a storage account, location, resource group and SA name will prompt.

variable "region" {
	description = "Azure region."
}
variable "ResourceGroup" {
	description = "Please enter the resource group for the storage account."
}
variable "Storage_Account_Name" {
	description = "Please enter the unique name for this storage account."
}

resource "azurerm_storage_account" "sa" {
	name				= var.Storage_Account_Name
	resource_group_name		= var.ResourceGroup
	location			= var.region
	account_tier			= "Standard"
	account_replication_type	= "GRS"

	tags = {
		environment	= "Terraform Storage"
		CreatedBy	= "TF Admin"
	}
}
