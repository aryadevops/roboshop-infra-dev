module "vpn_sg" {
    source = "https://github.com/sivadevopsdaws74s/terraform-aws-securitygroup.git"
    project_name = var.project_name
    sg_name = "${var.project_name}-vpn-${var.env}"
    sg_description = "Allowing all ports from my home IP"
    #sg_ingress_rules = var.sg_ingress_rules
    vpc_id = data.aws_vpc.default.id
    common_tags  = merge(
        var.common_tags,
        {
         Component = "VPN",
         Name = "${var.project_name}-vpn-${var.env}"
        }
    )

  
}
module "mongodb_sg" {
    source = "https://github.com/sivadevopsdaws74s/terraform-aws-securitygroup.git"
    project_name = var.project_name
    sg_name = "${var.project_name}-mongodb-${var.env}"
    sg_description = "Allowing Traffic"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = merge(
        var.common_tags,
        {
            Component = "MongoDB"
            Name = "${var.project_name}-mongodb-${var.env}"
        }
    )
  
}
module "redis_sg" {
    source = "https://github.com/sivadevopsdaws74s/terraform-aws-securitygroup.git"
    project_name = var.project_name
    sg_name = "${var.project_name}-redis-${var.env}"
    sg_description = "Allowing Traffic"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = merge(
        var.common_tags,
        {
            Component = "Redis"
            Name = "${var.project_name}-Redis-${var.env}"
        }
    )   
  
}
module "mysql_sg" {
  source = "https://github.com/sivadevopsdaws74s/terraform-aws-securitygroup.git"
  project_name = var.project_name
  sg_name = "${var.project_name}-mysql-${var.env}"
  sg_description = "Allowing traffic"
  #sg_ingress_rules = var.sg_ingress_rules
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = merge(
    var.common_tags,
    {
        Component = "mysql",
        Name = "${var.project_name}-mysql-${var.env}"
    }
  )
}
module "rabbitmq_sg" {
  source = "https://github.com/sivadevopsdaws74s/terraform-aws-securitygroup.git"
  project_name = var.project_name
  sg_name = "${var.project_name}-rabbitmq-${var.env}"
  sg_description = "Allowing traffic"
  #sg_ingress_rules = var.sg_ingress_rules
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = merge(
    var.common_tags,
    {
        Component = "Rabbitmq",
        Name = "${var.project_name}-rabbitmq-${var.env}"
    }
  )
}
module "catalogue_sg" {
  source = "https://github.com/sivadevopsdaws74s/terraform-aws-securitygroup.git"
  project_name = var.project_name
  sg_name = "${var.project_name}-catalogue-${var.env}"
  sg_description = "Allowing traffic"
  #sg_ingress_rules = var.sg_ingress_rules
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = merge(
    var.common_tags,
    {
        Component = "catalogue",
        Name = "${var.project_name}-catalogue-${var.env}"
    }
  )
}
module "user_sg" {
  source = "https://github.com/sivadevopsdaws74s/terraform-aws-securitygroup.git"
  project_name = var.project_name
  sg_name = "${var.project_name}-user-${var.env}"
  sg_description = "Allowing traffic"
  #sg_ingress_rules = var.sg_ingress_rules
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = merge(
    var.common_tags,
    {
        Component = "User",
        Name = "${var.project_name}-user-${var.env}"
    }
  )
}
module "cart_sg" {
  source = "https://github.com/sivadevopsdaws74s/terraform-aws-securitygroup.git"
  project_name = var.project_name
  sg_name = "${var.project_name}-cart-${var.env}"
  sg_description = "Allowing traffic"
  #sg_ingress_rules = var.sg_ingress_rules
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = merge(
    var.common_tags,
    {
        Component = "cart",
        Name = "${var.project_name}-cart-${var.env}"
    }
  )
}
module "shipping_sg" {
  source = "https://github.com/sivadevopsdaws74s/terraform-aws-securitygroup.git"
  project_name = var.project_name
  sg_name = "${var.project_name}-shipping-${var.env}"
  sg_description = "Allowing traffic"
  #sg_ingress_rules = var.sg_ingress_rules
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = merge(
    var.common_tags,
    {
        Component = "shipping",
        Name = "${var.project_name}-shipping-${var.env}"
    }
  )
}
module "payment_sg" {
  source = "https://github.com/sivadevopsdaws74s/terraform-aws-securitygroup.git"
  project_name = var.project_name
  sg_name = "${var.project_name}-payment-${var.env}"
  sg_description = "Allowing traffic"
  #sg_ingress_rules = var.sg_ingress_rules
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = merge(
    var.common_tags,
    {
        Component = "payment",
        Name = "${var.project_name}-payment-${var.env}"
    }
  )
}
module "app_alb_sg" {
  source = "https://github.com/sivadevopsdaws74s/terraform-aws-securitygroup.git"
  project_name = var.project_name
  sg_name = "${var.project_name}-app_alb-${var.env}"
  sg_description = "Allowing traffic"
  #sg_ingress_rules = var.sg_ingress_rules
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = merge(
    var.common_tags,
    {
        Component = "APP",
        Name = "${var.project_name}-app_alb-${var.env}"
    }
  )
}
module "web_sg" {
  source = "https://github.com/sivadevopsdaws74s/terraform-aws-securitygroup.git"
  project_name = var.project_name
  sg_name = "${var.project_name}-web-${var.env}"
  sg_description = "Allowing traffic"
  #sg_ingress_rules = var.sg_ingress_rules
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = merge(
    var.common_tags,
    {
        Component = "Web",
        Name = "${var.project_name}-web-${var.env}"
    }
  )
}
module "web_alb_sg" {
  source = "https://github.com/sivadevopsdaws74s/terraform-aws-securitygroup.git"
  project_name = var.project_name
  sg_name = "${var.project_name}-web_alb-${var.env}"
  sg_description = "Allowing traffic"
  #sg_ingress_rules = var.sg_ingress_rules
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = merge(
    var.common_tags,
    {
        Component = "Web",
        Name = "${var.project_name}-web_alb-${var.env}"
    }
  )
}
resource "aws_security_group_rule" "vpn" {
    type = "ingress"
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["${chomp(data.http.myip.body)}/32"]
    security_group_id = module.vpn_sg.security_group_id

  
}
resource "aws_security_group_rule" "mongodb_catalogue" {
    type = "ingress"
    description = "Allowing port number 27017 from catalogue"
    from_port = 27017
    to_port = 27017
    protocol = "tcp"
    source_security_group_id = module.catalogue_sg.security_group_id
    security_group_id = module.mongodb_sg.security_group_id

}
resource "aws_security_group_rule" "mongodb_vpn" {
    type = "ingress"
    description = "Allowing port number 22 from VPN"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    source_security_group_id = module.vpn_sg.security_group_id
    security_group_id = module.mongodb_sg.security_group_id
  
}
resource "aws_security_group_rule" "mongodb_user" {
    type = "ingress"
    description = "Allowing port number 27017 from user"
    from_port = 27017
    to_port = 27017
    protocol = "tcp"
    source_security_group_id = module.user_sg.security_group_id
    security_group_id = module.mongodb_sg.security_group_id
  
}
resource "aws_security_group_rule" "redis_vpn" {
    type = "ingress"
    description = "Allowing Port number 22 from VPN"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    source_security_group_id = module.vpn_sg.security_group_id
    security_group_id = module.redis_sg.security_group_id

}
resource "aws_security_group_rule" "redis_user" {
    type = "ingress"
    description = "Allowing port number 6379 from user"
    from_port = 6379
    to_port = 6379
    protocol = "tcp"
    source_security_group_id = module.user_sg.security_group_id
    security_group_id = module.redis_sg.security_group_id
  
}
resource "aws_security_group_rule" "redis_cart" {
    type = "ingress"
    description = "Allowing Port number 6379 from cart"
    from_port = 6379
    to_port = 6379
    protocol = "tcp"
    source_security_group_id = module.cart_sg.security_group_id
    security_group_id = module.redis_sg.security_group_id
  
}
resource "aws_security_group_rule" "mysql_vpn" {
    type = "ingress"
    description = "Allowing Port number 22 from VPN"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    source_security_group_id = module.vpn_sg.security_group_id
    security_group_id = module.mysql_sg.security_group_id

}
resource "aws_security_group_rule" "mysql_shipping" {
    type = "ingress"
    description = "Allowing port number 3306 from shipping"
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    source_security_group_id = module.shipping_sg.security_group_id
    security_group_id = module.mysql_sg.security_group_id

}
resource "aws_security_group_rule" "rabbitmq_payment" {
    type = "ingress"
    description = "Allowing port number 5672 from payment"
    from_port = 5672
    to_port = 5672
    protocol = "tcp"
    source_security_group_id = module.payment_sg.security_group_id
    security_group_id = module.rabbitmq_sg.security_group_id

}
resource "aws_security_group_rule" "rabbitmq_vpn" {
    type = "ingress"
    description = "Allowing port number 22 from VPN"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    source_security_group_id = module.vpn_sg.security_group_id
    security_group_id = module.rabbitmq_sg.security_group_id

}
resource "aws_security_group_rule" "catalogue_vpn" {
    type = "ingress"
    description = "Allowing port number 22 from VPN"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    source_security_group_id = module.vpn_sg.security_group_id
    security_group_id = module.catalogue_sg.security_group_id

}
resource "aws_security_group_rule" "catalogue_app_alb" {
    type = "ingress"
    description = "Allowing port number 8080 from APP_ALB"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    source_security_group_id = module.app_alb_sg.security_group_id
    security_group_id = module.catalogue_sg.security_group_id

}
resource "aws_security_group_rule" "user_app_alb" {
    type = "ingress"
    description = "Allowing port number 8080 from APP_ALB"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    source_security_group_id = module.app_alb_sg.security_group_id
    security_group_id = module.user_sg.security_group_id

}
resource "aws_security_group_rule" "user_vpn" {
    type = "ingress"
    description = "Allowing port number 22 from VPN"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    source_security_group_id = module.vpn_sg.security_group_id
    security_group_id = module.user_sg.security_group_id

}
resource "aws_security_group_rule" "cart_vpn" {
    type = "ingress"
    description = "Allowing port number 22 from VPN"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    source_security_group_id = module.vpn_sg.security_group_id
    security_group_id = module.cart_sg.security_group_id

}
resource "aws_security_group_rule" "cart_app_alb" {
    type = "ingress"
    description = "Allowing port number 8080 from App_alb"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    source_security_group_id = module.app_alb_sg.security_group_id
    security_group_id = module.cart_sg.security_group_id

}
resource "aws_security_group_rule" "shipping_vpn" {
    type = "ingress"
    description = "Allowing port number 22 from VPN"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    source_security_group_id = module.vpn_sg.security_group_id
    security_group_id = module.shipping_sg.security_group_id

}
resource "aws_security_group_rule" "shipping_app_alb" {
    type = "ingress"
    description = "Allowing port number 8080 from app_alb"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    source_security_group_id = module.app_alb_sg.security_group_id
    security_group_id = module.shipping_sg.security_group_id

}
resource "aws_security_group_rule" "payment_vpn" {
    type = "ingress"
    description = "Allowing port number 22 from VPN"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    source_security_group_id = module.vpn_sg.security_group_id
    security_group_id = module.payment_sg.security_group_id

}
resource "aws_security_group_rule" "payment_app_alb" {
    type = "ingress"
    description = "Allowing port number 8080 from app-alb"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    source_security_group_id = module.app_alb_sg.security_group_id
    security_group_id = module.payment_sg.security_group_id

}
resource "aws_security_group_rule" "app_alb_vpn" {
    type = "ingress"
    description = "Allowing port number 80 from VPN"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    source_security_group_id = module.vpn_sg.security_group_id
    security_group_id = module.app_alb_sg.security_group_id

}
resource "aws_security_group_rule" "app_alb_web" {
    type = "ingress"
    description = "Allowing port number 80 from web"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    source_security_group_id = module.web_sg.security_group_id
    security_group_id = module.app_alb_sg.security_group_id

}
resource "aws_security_group_rule" "app_alb_catalogue" {
    type = "ingress"
    description = "Allowing port number 80 from catalogue"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    source_security_group_id = module.catalogue_sg.security_group_id
    security_group_id = module.app_alb_sg.security_group_id

}
resource "aws_security_group_rule" "app_alb_user" {
    type = "ingress"
    description = "Allowing port number 80 from user"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    source_security_group_id = module.user_sg.security_group_id
    security_group_id = module.app_alb_sg.security_group_id

}
resource "aws_security_group_rule" "app_alb_cart" {
    type = "ingress"
    description = "Allowing port number 80 from cart"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    source_security_group_id = module.cart_sg.security_group_id
    security_group_id = module.app_alb_sg.security_group_id

}
resource "aws_security_group_rule" "app_alb_shipping" {
    type = "ingress"
    description = "Allowing port number 80 from Shipping"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    source_security_group_id = module.shipping_sg.security_group_id
    security_group_id = module.app_alb_sg.security_group_id

}
resource "aws_security_group_rule" "app_alb_payment" {
    type = "ingress"
    description = "Allowing port number 80 from Paymet"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    source_security_group_id = module.payment_sg.security_group_id
    security_group_id = module.app_alb_sg.security_group_id

}
resource "aws_security_group_rule" "web_vpn" {
    type = "ingress"
    description = "Allowing port number 80 from VPN"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    source_security_group_id = module.vpn_sg.security_group_id
    security_group_id = module.web_sg.security_group_id

}
resource "aws_security_group_rule" "web_vpn_ssh" {
    type = "ingress"
    description = "Allowing port number 22 from VPN"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    source_security_group_id = module.vpn_sg.security_group_id
    security_group_id = module.web_sg.security_group_id

}
resource "aws_security_group_rule" "web_web_alb" {
    type = "ingress"
    description = "Allowing port number 80 from web_alb"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    source_security_group_id = module.web_alb_sg.security_group_id
    security_group_id = module.web_sg.security_group_id

}
resource "aws_security_group_rule" "web_alb_internet" {
    type = "ingress"
    description = "Allowing port number 80 from internet"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    #source_security_group_id = module.web_sg.security_group_id
    security_group_id = module.web_alb_sg.security_group_id

}
resource "aws_security_group_rule" "web_alb_internet_https" {
    type = "ingress"
    description = "Allowing port number 443 from internet https"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    #source_security_group_id = module.web_sg.security_group_id
    security_group_id = module.web_alb_sg.security_group_id

}






