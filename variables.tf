# AWS region
variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# Project name
variable "project_name" {
  description = "Name prefix for all resources"
  type        = string
  default     = "demo-project"
}

# EC2 instance type
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# Amazon Machine Image (AMI) ID
variable "ami_id" {
  description = "AMI ID for the instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 (us-east-1)
}

# SSH key pair name
variable "key_pair" {
  description = "Name of the existing AWS key pair for SSH access"
  type        = string
  default     = "my-keypair"
}
