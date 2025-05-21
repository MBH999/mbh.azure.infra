data "azurerm_client_config" "current" {}

module "avm-ptn-alz" {
  source  = "Azure/avm-ptn-alz/azurerm"
  version = "0.12.0"

  location = "uksouth"
  architecture_name = "alz"
  parent_resource_id = data.azurerm_client_config.current.tenant_id
}

