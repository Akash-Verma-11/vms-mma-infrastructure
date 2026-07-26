locals {
  resource_prefix = "${var.project_name}-${var.environment}"

  common_tags = {
    Project     = "VMS-MMA"
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = "Akash-Verma"
  }
}
