terraform {
  required_providers {
    aws = {
<<<<<<< HEAD
      source = "hashicorp/aws"
=======
      source  = "hashicorp/aws"
      version = "~> 6.0"
>>>>>>> af33c2db38991f2ce4dda3744df5169b2aabfa6e
    }
  }
}

provider "aws" {
  region = var.aws_region
}

<<<<<<< HEAD
resource "aws_vpc" "production_vpc" {

  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "production-vpc"
  }
}

resource "aws_subnet" "public" {

  vpc_id = aws_vpc.production_vpc.id

  cidr_block = "10.0.1.0/24"

  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet"
  }
}


resource "aws_subnet" "private" {

  vpc_id = aws_vpc.production_vpc.id

  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "private-subnet"
  }
}

resource "aws_security_group" "production_sg" {
  name        = "production-sg"
  vpc_id      = aws_vpc.production_vpc.id
  description = "Allow SSH and HTTP"

  tags = {
    Name = "produc-sg"
  }


  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

}

resource "aws_instance" "server1" {
  ami           = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.production_sg.id]

  subnet_id = aws_subnet.public.id

  key_name = "pankaj-new-aws-test-key"

  tags = {
    Name        = var.instance_name
    Environment = "lab"
    ManagedBy   = "Terraform"
  }

=======
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name        = var.instance_name
    Environment = "Lab"
    ManagedBy   = "Terraform"
  }
>>>>>>> af33c2db38991f2ce4dda3744df5169b2aabfa6e
}