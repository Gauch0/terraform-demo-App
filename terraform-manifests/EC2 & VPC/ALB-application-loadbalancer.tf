# Terraform AWS Application Load Balancer (ALB)
module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "5.16.0"
  name    = "${local.name}-alb"
  # Load Balancer
  load_balancer_type = "application"
  vpc_id = module.vpc.vpc_id
  security_groups    = [module.loadbalancer_sg.this_security_group_id]
  subnets            = [
    module.vpc.public_subnets[0], 
    module.vpc.public_subnets[1] 
    ]
    # Listener
  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]


  # Target Group
  target_groups = [
    {
      name_prefix      = "app1-"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
      deregistration_delay = 10
      healt_check = {
        enabled            = true
        path                = "/app1/index.html"
        interval            = 30
        port                = "traffic-port"
        timeout             = 6
        healthy_threshold   = 3
        unhealthy_threshold = 3
        protocol            = "HTTP"
        matcher             = "200-399"
      }
      protocol_version = "HTTP1"
      # APP1 Target Group - Targets
      targets = {
        my_ec2_vm1 = {
            target_id = module.ec2_private.this_instance_id[0]
            port      = 80
        },
        my_ec2_vm2 = {
            target_id = module.ec2_private.this_instance_id[1]
            port      = 80
        }
      }
      tags = local.common_tags
    }
   ]
    tags = local.common_tags
}
