variable "project_name" {
  description = "VMS-MMA technical project name"
  type        = string
  default     = "vms-mma"

  validation {
    condition     = var.project_name == "vms-mma"
    error_message = "The project name must remain vms-mma."
  }
}

variable "environment" {
  description = "VMS-MMA environment"
  type        = string
  default     = "dev"

  validation {
    condition = contains(
      ["dev", "staging", "production"],
      var.environment
    )

    error_message = "Environment must be dev, staging or production."
  }
}

variable "aws_region" {
  description = "Default AWS Region for VMS-MMA"
  type        = string
  default     = "ap-south-1"
}
