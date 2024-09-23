
variable "aws_region" {
  type        = string
  description = "The AWS region."
  default     = "us-east-1"
}

variable "script_names" {
  type = list(string)
  default = [
    "disable_ipv6",
    "install_docker",
  ]
}

variable "ec2_iam_role_name" {
  type        = string
  description = "The EC2's IAM role name."
}

variable "ebs_root_vol_size" {
  type = number
  default = 10
}

variable "image_receipe_version" {}

variable "instance_types" {
  type = list(string)
  default = ["t2.micro"]
}

variable "ami_name" {
  type = string
}

variable "parent_image" {
  type = string
}

variable "account" {
  default = "sandbox"
}