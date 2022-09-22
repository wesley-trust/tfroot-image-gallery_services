# Define resource group for resource
module "resource_group" {
  for_each            = toset(local.service_location)
  source              = "github.com/wesley-trust/tfmodule-resource_group?ref=v1-resource_group"
  service_environment = terraform.workspace
  service_name        = var.service_name
  service_location    = each.value
  service_deployment  = var.service_deployment
}
