data "aws_ssm_parameter" "vpc_id" {
  name = var.ssm_vpc_id

}

data "aws_ssm_parameter" "listener" {
  name = var.ssm_listener
}

data "aws_ssm_parameter" "subnet_private_1a" {
  name = var.ssm_subnet_private_1a
}


data "aws_ssm_parameter" "subnet_private_1b" {
  name = var.ssm_subnet_private_1b
}

data "aws_ssm_parameter" "subnet_private_1c" {
  name = var.ssm_subnet_private_1c
}