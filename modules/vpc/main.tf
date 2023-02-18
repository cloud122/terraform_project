resource "aws_vpc" "test_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "my-${var.infra_env}"
    Evironment = var.infra_env
  }
}

resource "aws_subnet" "private" {
  for_each = var.private_subnet_numbers

  vpc_id = aws_vpc.test_vpc.id
  availability_zone = each.key
  cidr_block = cidrsubnet(aws_vpc.test_vpc.cidr_block, 4, each.value)
  
  tags = {
    Name = "my-${var.infra_env}"
    Evironment = var.infra_env
    Subnet = "${each.key}-${each.value}"
  }
}