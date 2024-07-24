variable "project_name" {
    default = "roboshop"
  
}
variable "env" {
    default = "dev"
  
}
variable "common_tags" {
    default = {
    Project = "roboshop"
    Component = "vpc"
    Environment = "DEV"
    Terraform = "true"
  }
}
variable "cidr_block" {
  default = "10.1.0.0/16"

}
variable "public_subnet_cidr" {
    default = ["10.1.1.0/24","10.1.2.0/24"]
  
}
variable "private_subnet_cidr" {
    default = ["10.1.11.0/24","10.1.12.0/24"]
  
}
variable "database_subnet_cidr" {
    default = ["10.1.21.0/24","10.1.22.0/24"]
  
}
variable "is_peering_required" {
    default = true
  
}