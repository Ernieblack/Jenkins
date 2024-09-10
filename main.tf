


# CREATING VPC

resource "aws_vpc" "TF-Project" {
  cidr_block           = var.vpc-cidr
  instance_tenancy     = var.instance_tenancy
  enable_dns_hostnames = var.dns-hostnames
  enable_dns_support   = var.dns-support

  tags = {
    Name = "TF-Project"
  }
}




# CREATING PUBLIC SUBNETS

resource "aws_subnet" "TF-Pub-1" {
  vpc_id                  = aws_vpc.TF-Project.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = var.az
  map_public_ip_on_launch = var.map-public

  tags = {
    Name = "TF-Pub-1"
  }
}

resource "aws_subnet" "TF-Pub-2" {
  vpc_id                  = aws_vpc.TF-Project.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = var.az1
  map_public_ip_on_launch = var.map-public

  tags = {
    Name = "TF-Pub-2"
  }
}
