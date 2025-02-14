
variable "project_name" {
  default = "roboshop"
}

variable "env" {
  default = "prod"
}

variable "common_tags" {
  default = {
    Project = "roboshop"
    Component = "vpn"
    Environment = "PROD"
    Terraform = "true"
  }
}
