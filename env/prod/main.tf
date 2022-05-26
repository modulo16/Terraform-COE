resource "aws_vpc" "main" {
  cidr_block       = "10.100.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name       = "modulo16 Main VPC"
    CostCenter = "Networking"
    app        = "Terraform-COE"

  }
}

resource "aws_subnet" "main-subnet" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.100.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name       = "modulo16 Main Subnet"
    CostCenter = "Networking"
    app        = "Terraform-COE"
    }
}

