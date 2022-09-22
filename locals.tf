# Calculate local variables
locals {
  # Service functions and concatenations
  service_location_prefix    = replace(var.service_location, "/[a-z[:space:]]/", "")
  service_environment_prefix = substr(var.service_environment, 0, 1)

  # Resource functions and concatenations
  resource_name_prefix = lookup(var.resource_name, var.service_name, null)
  resource_description = lookup(var.resource_description, var.service_name, null)
  resource_name        = "${local.service_environment_prefix}-${local.service_location_prefix}-${local.resource_name_prefix}"
}