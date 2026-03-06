terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}


provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "jenkins-server" {
  ami                    = var.ami-id
  instance_type          = "t3.medium"
  key_name               = var.key-name
  vpc_security_group_ids = var.security-group-ids

  tags = {
    Name = "Jenkins-Server"
  }

  root_block_device {
    volume_size = 10
  }
}

output "jenkins_server_ip" {
  value = aws_instance.jenkins-server.public_ip
}

resource "aws_instance" "my-server" {
  ami                    = var.ami-id
  instance_type          = "t2.small"
  key_name               = var.key-name
  vpc_security_group_ids = var.security-group-ids

  tags = {
    "Name" = "My-Server"
  }

  root_block_device {
    volume_size = 20
  }
}

output "my_server_ip" {
  value = aws_instance.my-server.public_ip
}
