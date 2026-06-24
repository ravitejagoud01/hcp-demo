resource "aws_vpc" "main" {
  cidr_block         = var.vpc_cidr
  enable_dns_support = true

  tags = {
    Name = " dev-main-vpc"
    Environment = "dev"
  }

}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_public_cidr
  tags = {
    Name = "public-subnet"
    Environment = "dev"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_private_cidr
  tags = {
    Name = "main-subnet"
    Environment = "dev"
  }
}

# resource "aws_s3_bucket" "demo-bucket" {
#   bucket = "demobucketravi0305"

#   tags = {
#     name = "demo-bucket"
#   }
# }