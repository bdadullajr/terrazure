provider "azurerm" {
version = "2.3.0"
features {}
}

resource "azurerm_resource_group" "rg" {
	name = "TFResourceGroup"
	location ="eastus"

	tags = {
	environment = "Terraform"
	deployedby = "Admin"
	}

}

resource "azurerm_app_service_plan" "svcplan" {
  name                = "newnetservice123"
  location            = "eastus"
  resource_group_name = "TFResourceGroup"

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "appsvc" {
  name                = "newwebappservice123"
  location            = "eastus"
  resource_group_name = "TFResourceGroup"
  app_service_plan_id = azurerm_app_service_plan.svcplan.id


  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }
}
