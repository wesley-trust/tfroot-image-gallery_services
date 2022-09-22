# Define resources
resource "azurerm_shared_image_gallery" "image-gallery_services" {
  name                = local.resource_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  description         = local.resource_description

  tags = {
    environment = terraform.workspace
    deployment  = var.service_deployment
  }
}
