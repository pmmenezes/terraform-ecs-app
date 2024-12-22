module "service" {
  region                      = var.region
  source                      = "/home/pmm/Repos/pmm/terraform-ecs-service-module"
  cluster_name                = var.cluster_name
  service_name                = var.service_name
  service_port                = var.service_port
  service_cpu                 = var.service_cpu
  service_memory              = var.service_memory
  service_listener            = data.aws_ssm_parameter.listener.value
  service_task_execution_role = "arn:aws:iam::471112898994:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
  service_healthcheck         = var.service_healthcheck
  environment_variables       = var.environment_variables
  capabilities                = var.capabilities
  vpc_id                      = data.aws_ssm_parameter.vpc_id.value
  private_subnets = [
    data.aws_ssm_parameter.subnet_private_1a.value,
    data.aws_ssm_parameter.subnet_private_1b.value,
    data.aws_ssm_parameter.subnet_private_1c.value
  ]

}