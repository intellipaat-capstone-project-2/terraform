resource "aws_instance" "jenkins-instance" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  key_name = aws_key_pair.keypair_terraform.key_name
  count = 1
  network_interface {
    network_interface_id = aws_network_interface.jenkins-nw-interface.id
    device_index         = 0
  }
  tags = {
    Name = "jenkins-instance"
    purpose = "capstone-project2"
  }
}

resource "aws_instance" "k8s-master-instance" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  key_name = aws_key_pair.keypair_terraform.key_name
  count = 1
  network_interface {
    network_interface_id = aws_network_interface.k8s-master-nw-interface.id
    device_index         = 0
  }
  tags = {
    Name = "k8s-master-instance"
    purpose = "capstone-project2"
  }
}

resource "aws_instance" "k8s-worker1-instance" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  key_name = aws_key_pair.keypair_terraform.key_name
  count = 1
  network_interface {
    network_interface_id = aws_network_interface.k8s-worker1-nw-interface.id
    device_index         = 0
  }
  tags = {
    Name = "k8s-worker1-instance"
    purpose = "capstone-project2"
  }
}

resource "aws_instance" "k8s-worker2-instance" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  key_name = aws_key_pair.keypair_terraform.key_name
  count = 1
  network_interface {
    network_interface_id = aws_network_interface.k8s-worker2-nw-interface.id
    device_index         = 0
  }
  tags = {
    Name = "k8s-worker2-instance"
    purpose = "capstone-project2"
  }
}