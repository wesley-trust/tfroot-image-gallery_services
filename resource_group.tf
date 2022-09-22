# Define resource group for resource
module "resource_group" {
  source              = "github.com/wesley-trust/tfmodule-resource_group?ref=v1-resource_group"
  service_environment = terraform.workspace
  service_name        = var.service_name
  service_location    = local.service_location
  service_deployment  = var.service_deployment
}
