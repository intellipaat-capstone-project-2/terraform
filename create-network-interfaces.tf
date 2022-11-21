resource "aws_network_interface" "k8s-master-nw-interface" {
  subnet_id   = aws_subnet.k8s-cluster.id
  security_groups = [aws_security_group.allow_all_traffic.id]
  tags = {
    Name = "k8s-cluster-nw-interface"
    purpose = "capstone-project2"
  }
}

resource "aws_network_interface" "k8s-worker1-nw-interface" {
  subnet_id   = aws_subnet.k8s-cluster.id
  security_groups = [aws_security_group.allow_all_traffic.id]
  tags = {
    Name = "k8s-cluster-nw-interface"
    purpose = "capstone-project2"
  }
}

resource "aws_network_interface" "k8s-worker2-nw-interface" {
  subnet_id   = aws_subnet.k8s-cluster.id
  security_groups = [aws_security_group.allow_all_traffic.id]
  tags = {
    Name = "k8s-cluster-nw-interface"
    purpose = "capstone-project2"
  }
}

resource "aws_network_interface" "jenkins-nw-interface" {
  subnet_id   = aws_subnet.jenkins.id
  security_groups = [ aws_security_group.allow_ssh_traffic.id, aws_security_group.allow_jenkins_traffic.id ]
  tags = {
    Name = "jenkins-nw-interface"
    purpose = "capstone-project2"
  }
}