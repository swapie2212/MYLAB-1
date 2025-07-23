variable "region" {
  default     = "ap-south-1"
  description = "AWS region to deploy infrastructure"
}

variable "instance_type" {
  default     = "t3.large"
  description = "EC2 instance type for Kubernetes host"
}

variable "key_name" {
  description = "Name of the AWS key pair for SSH access"
 }