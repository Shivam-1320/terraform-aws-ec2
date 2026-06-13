variable "aws_region" {
  description = "Aws Region to deploy resource"
  type        = string
}

variable "instance_name" {
  description = "name of the instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for Ec2"
  type        = string
}

variable "instance_type" {
  description = "type of the instance"
  type        = string
}