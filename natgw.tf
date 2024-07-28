# creating the elastic IP in AWS 

resource "aws_eip" "el1" {

}

# Associating the Elastic IP with NAT gateway

resource "aws_nat_gateway" "natgw1" {
  allocation_id = aws_eip.el1.id
  subnet_id     = aws_subnet.public1.id
}