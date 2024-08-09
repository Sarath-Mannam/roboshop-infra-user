data "aws_ami" "devops_ami" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice" # AMI name you can get from AWS console
  owners = ["973714476881"]

  filter {
   name = "name"
   values = ["Centos-8-DevOps-Practice"] 
  }

  filter {
    name = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
}