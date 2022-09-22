# Define resources
resource "azurerm_shared_image_gallery" "image-gallery_services" {
  for_each            = toset(local.service_location)
  name                = var.service_name
  resource_group_name = module.resource_group[each.value].name
  location            = module.resource_group[each.value].location
  description         = var.resource_description

  tags = {
    environment = terraform.workspace
    deployment  = var.service_deployment
  }
}
