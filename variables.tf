variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "amis" {
    description = "AMIs by region"
	type = map(string)
    default = {
        us-west-1 = "ami-0454207e5367abf01" # ubuntu 16.04 LTS
		us-wast-2 = "ami-0688ba7eeeeefe3cd" # ubuntu 16.04 LTS
		us-east-1 = "ami-0b0ea68c435eb488d" # ubuntu 16.04 LTS
		us-east-2 = "ami-05803413c51f242b7" # ubuntu 16.04 LTS
    }
}
variable "vpc_cidr" {}
variable "vpc_name" {}
variable "IGW_name" {}
variable "key_name" {}
variable "public_subnet1_cidr" {}
variable "public_subnet2_cidr" {}
variable "public_subnet3_cidr" {}
variable "private_subnet_cidr" {}
variable "public_subnet1_name" {}
variable "public_subnet2_name" {}
variable "public_subnet3_name" {}
variable "private_subnet_name" {}
variable Main_Routing_Table {}
variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  type = list(string)
  default = ["us-west-1a", "us-west-1b", "us-west-1c"]
}
variable "blocks" {
  description = "Use the CIDR Blocks for the Subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
variable "environment" { default = "dev" }
variable "instance_type" {
  type = map(string)
  default = {
    dev = "t2.nano"
    test = "t2.micro"
    prod = "t2.medium"
    }
}


