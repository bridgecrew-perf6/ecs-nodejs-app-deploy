# When you have existing vpc, based on ur avaialbility zone
# update this file.
# Find out - VPC name
# Find out your public subnet name
# Find out your availbitliy zones and replace here

# network.tf without elp
variable "existing_vpc_name" {
  description = "Existing VPC created for ecs fargate"
  default     = "ecs-fargate-vpc"
}

variable "existing_vpc_public_subnet_name" {
  description = "public subnet name which tie up with existing vpc"
  default     = "ecs-fargate-public-subnet"
}


data "aws_vpc" "main" {
 id = "vpc-03cb1bf72bd4fab17"
}

data "aws_subnet" "ecs-fargate-public-subnet-for-alb-1a" {
 id = "subnet-0ca68cf41641f9553"
}

data "aws_subnet" "ecs-fargate-public-subnet-for-alb-1b" {
 id = "subnet-0011c98da49f353e4"
}

data "aws_subnet" "ecs-fargate-public-subnet-for-alb-1c" {
 id = "subnet-0620ec3e0132e4129"
}

data "aws_subnet" "ecs-fargate-private-subnet-for-service-1a" {
 id = "subnet-01b5f2ee3cc0b47f7"
}

data "aws_subnet" "ecs-fargate-private-subnet-for-service-1b" {
 id = "subnet-0515737f5bd5dccb2"
}

data "aws_subnet" "ecs-fargate-private-subnet-for-service-1c" {
 id = "subnet-00a0a7d2b3eba89e2"
}


# print vpc and subnet ids
output "aws_vpc_name" {
  value = data.aws_vpc.main.id
}

output "ecs-fargate-public-subnet-for-alb-1a" {
  value = data.aws_subnet.ecs-fargate-public-subnet-for-alb-1a.id
}

output "ecs-fargate-public-subnet-for-alb-1b" {
  value = data.aws_subnet.ecs-fargate-public-subnet-for-alb-1b.id
}

output "ecs-fargate-public-subnet-for-alb-1c" {
  value = data.aws_subnet.ecs-fargate-public-subnet-for-alb-1c.id
}

output "ecs-fargate-private-subnet-for-service-1a" {
  value = data.aws_subnet.ecs-fargate-private-subnet-for-service-1a.id
}

output "ecs-fargate-private-subnet-for-service-1b" {
  value = data.aws_subnet.ecs-fargate-private-subnet-for-service-1b.id
}

output "ecs-fargate-private-subnet-for-service-1c" {
  value = data.aws_subnet.ecs-fargate-private-subnet-for-service-1c.id
}
