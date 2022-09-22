# Calculate local variables
locals {
  # Service functions and concatenations
  service_location           = lookup(var.service_location, "${terraform.workspace}", null)
  service_environment_prefix = substr(terraform.workspace, 0, 1)

  # Resource functions and concatenations
  resource_description = lookup(var.resource_description, var.service_name, null)
  resource_name        = "${local.service_environment_prefix}-${var.service_name}"
}
