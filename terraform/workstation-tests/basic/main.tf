resource "terraform_data" "workstation_validation" {
  input = {
    project_name    = var.project_name
    environment     = var.environment
    aws_region      = var.aws_region
    resource_prefix = local.resource_prefix
    message         = "VMS-MMA Terraform workstation is ready"
    tags            = local.common_tags
  }
}
