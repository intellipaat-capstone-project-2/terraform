resource "aws_internet_gateway" "hshar-igw" {
  vpc_id = aws_vpc.hshar-vpc.id
  tags = {
    Name = "hshar-igw"
    purpose = "capstone-project2"
  }
}