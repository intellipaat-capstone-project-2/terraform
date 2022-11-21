resource "aws_security_group" "allow_all_traffic" {
  name        = "allow_all_traffic"
  description = "Allow all inbound traffic"
  vpc_id      = aws_vpc.hshar-vpc.id
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow_all_traffic"
    purpose = "capstone-project2"
  }
}

resource "aws_security_group" "allow_ssh_traffic" {
  name        = "allow_ssh_traffic"
  description = "Allow ssh inbound traffic"
  vpc_id      = aws_vpc.hshar-vpc.id
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow_ssh_traffic"
    purpose = "capstone-project2"
  }
}

resource "aws_security_group" "allow_jenkins_traffic" {
  name        = "allow_jenkins_traffic"
  description = "Allow jenkins inbound traffic"
  vpc_id      = aws_vpc.hshar-vpc.id
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow_jenkins_traffic"
    purpose = "capstone-project2"
  }
}

resource "aws_security_group" "allow_http_traffic" {
  name        = "allow_http_traffic"
  description = "Allow http inbound traffic"
  vpc_id      = aws_vpc.hshar-vpc.id
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow_http_traffic"
    purpose = "capstone-project2"
  }
}