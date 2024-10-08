
# Creating the VPC

resource "aws_vpc" "vpc1" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Alb-vpc"
    Team = "Devops"
    env  = "Dev"
  }
}

