module "vpc" {
  source = "git::https://github.com/sivadevopsdaws74s/terraform-aws-vpc-advanced.git"
  project_name = var.project_name
  env = var.env
  cidr_block = var.cidr_block
  common_tags = var.common_tags
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  database_subnet_cidr = var.database_subnet_cidr


  ##VPC Peering
  is_peering_required = var.is_peering_required
  requestor_vpc_id = data.aws_vpc.default.id
  default_route_table_id = data.aws_vpc.default.main_route_table_id
  default_vpc_cidr = data.aws_vpc.default.cidr_block
}