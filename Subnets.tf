
# Public subnet 1 
resource "aws_subnet" "public1" {
  availability_zone = "${var.REGION}a"
  //availability_zone       = "us-east-1a"
  cidr_block              = "10.0.1.0/24"
  vpc_id                  = aws_vpc.vpc1.id
  map_public_ip_on_launch = true

  tags = {
    Name = "Alb-VPC-public-subnet-1a"
  }
}

# Public subnet 2
resource "aws_subnet" "public2" {
  availability_zone = "${var.REGION}b"
  //availability_zone       = "us-east-1b"
  cidr_block              = "10.0.2.0/24"
  vpc_id                  = aws_vpc.vpc1.id
  map_public_ip_on_launch = true

  tags = {
    Name = "Alb-VPC-public-subnet-1b"
  }
}

# Private-subnet 1
resource "aws_subnet" "private1" {
  availability_zone = "${var.REGION}a"
  //availability_zone = "us-east-1a"
  cidr_block = "10.0.3.0/24"
  vpc_id     = aws_vpc.vpc1.id

  tags = {
    Name = "Alb-VPC-private-subnet-1a"
  }
}

# Private-subnet 2
resource "aws_subnet" "private2" {
  availability_zone = "${var.REGION}b"
  //availability_zone = "us-east-1b"
  cidr_block = "10.0.4.0/24"
  vpc_id     = aws_vpc.vpc1.id

  tags = {
    Name = "Alb-VPC-private-subnet-1b"
  }


}