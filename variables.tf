# Define variables
variable "service_name" {
  description = "Desired name for the provisioned resources"
  type        = string
  default     = "ImageGalleryServices"
}

variable "service_description" {
  description = "Desired description for the provisioned resources"
  type        = string
  default     = "Shared images"
}

variable "service_location" {
  description = "The production resource locations to deploy"
  type        = map(any)
  default = {
    Prod = [
      "UK South"
    ]

    Prod_BCDR = [
      "North Central US"
    ]

    Dev = [
      "UK South"
    ]

    Dev_BCDR = [
      "North Central US"
    ]

    default = [
      "UK South"
    ]

    default_BCDR = [
      "North Central US"
    ]
  }
}

variable "service_deployment" {
  description = "Desired deployment identifier of the service collection of provisioned resources"
  type        = string
  default     = "01"
}