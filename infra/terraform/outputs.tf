output "instance_ip" {
  value = aws_instance.devops_node.public_ip
  description = "Public IP address of the EC2 instance"
}
