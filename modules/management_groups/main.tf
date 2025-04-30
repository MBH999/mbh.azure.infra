data "azurerm_management_group" "tenant_root" {
    name = "4f70e41a-bebd-441e-9dfc-c18b67ce3fc3"
}

resource "azurerm_management_group" "level_1" {
  display_name = "MBHLabs"
  parent_management_group_id = data.azurerm_management_group.tenant_root.id
}