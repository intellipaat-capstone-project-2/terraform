resource "aws_route_table" "hshar-route-table" {
  vpc_id = aws_vpc.hshar-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.hshar-igw.id
  }
  tags = {
    Name = "hshar-route-table"
    purpose = "capstone-project2"
  }
}