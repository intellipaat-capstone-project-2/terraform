resource "aws_route_table_association" "k8s-cluster-association" {
  subnet_id      = aws_subnet.k8s-cluster.id
  route_table_id = aws_route_table.hshar-route-table.id
}

resource "aws_route_table_association" "jenkins-association" {
  subnet_id      = aws_subnet.jenkins.id
  route_table_id = aws_route_table.hshar-route-table.id
}