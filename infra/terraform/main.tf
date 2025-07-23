terraform {
  backend "s3" {
    bucket         = "mylab-statefile-bucket"   # ✅ Replace with your actual bucket name
    key            = "mylab/terraform.tfstate" 
    region         = "ap-south-1"  
     }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


resource "aws_instance" "devops_node" {
  ami           = "ami-0f918f7e67a3323f0"
  instance_type = var.instance_type
  subnet_id              = "subnet-0656b560e7a1c1636" 
  vpc_security_group_ids = ["sg-08880bff133c41848"]
  key_name               = var.key_name

  root_block_device {
    volume_size = 30
  }

  tags = {
    Name = "MinikubeNode"
  }
}