variable "region" {
  default     = "ap-south-1"
  description = "AWS region to deploy infrastructure"
}

variable "aws_access_key" {
  description = "AWS access key"
}

variable "aws_secret_key" {
  description = "AWS secret key"
}

variable "instance_type" {
  default     = "t3.large"
  description = "EC2 instance type for Kubernetes host"
}

variable "key_name" {
  description = "Name of the AWS key pair for SSH access"
  default     = "ansible"
}