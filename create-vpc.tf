resource "aws_vpc" "hshar-vpc" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "hshar-vpc"
    purpose = "capstone-project2"
  }
}