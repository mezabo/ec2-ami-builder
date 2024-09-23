# Data for VPC based on the <<account>01> vpc:name tag.  This allows you to dynamically
# based on account variable assure you are acquiring that accounts VPC info.
data "aws_vpc" "vpc" {
  id = "vpc-0b87e8f4572a9d420"
}

# This block pulls the private:nat net subnet ids for the appropriate VPC.
# data "aws_subnet" "_" {
#   filter {
#     name = "vpc-id"
#     values = [data.aws_vpc.vpc.id]
#   }

#   tags = {
#     "private" = "proxied"
#   }
# }

# data "aws_security_group" "_" {
#   filter {
#     name = "vpc-id"
#     values = [data.aws_vpc.vpc.id]
#  }
# }

# Instance Profile for the EC2
data "aws_iam_instance_profile" "_" {
  name = "EC2InstanceProfileForImageBuilder"
}

data "aws_iam_policy_document" "image_builder" {

}

data "aws_ami" "source" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}
