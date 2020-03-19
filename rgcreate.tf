provider "azurerm" {
}
resource "azurerm_resource_group" "rg" {
	name = "TFResourceGroup"
	location ="eastus"

	tags = {
	environment = "Terraform"
	deployedby = "Adminn"
	}
}
