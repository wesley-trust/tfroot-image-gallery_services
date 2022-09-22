# Calculate local variables
locals {
  # Service functions and concatenations
  service_location = lookup(var.service_location, "${terraform.workspace}", null)
}
