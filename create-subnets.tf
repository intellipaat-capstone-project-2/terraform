resource "aws_subnet" "k8s-cluster" {
  vpc_id     = aws_vpc.hshar-vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "k8s-cluster"
    purpose = "capstone-project2"
  }
}

resource "aws_subnet" "jenkins" {
  vpc_id     = aws_vpc.hshar-vpc.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "jenkins"
    purpose = "capstone-project2"
  }
}