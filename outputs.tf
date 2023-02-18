output "bucket_name" {
  value = module.s3_module.bucket_name
}

output "vpc_id" {
  value = module.vpc_module.vpc_id
}

output "vpc_cidr" {
  value = module.vpc_module.vpc_cidr
}

output "vpc_private_subnets" {
  # Result is a map of subnet id to cidr block, e.g.
  # { "subnet_1234" => "10.0.1.0/4", ...}
  value = module.vpc_module.vpc_private_subnets
}

output "vpc_private_subnet0" {
  # Result is a map of subnet id to cidr block, e.g.
  # { "subnet_1234" => "10.0.1.0/4", ...}
  # output."${keys(vpc_private_subnets)[0]}"
  value = keys(module.vpc_module.vpc_private_subnets)[0]
}

output "instance_id" {
  # Result is a map of subnet id to cidr block, e.g.
  # { "subnet_1234" => "10.0.1.0/4", ...}
  # output."${keys(vpc_private_subnets)[0]}"
  value = module.ec2_module.instance_id
}

output "instance_private_ip" {
  # Result is a map of subnet id to cidr block, e.g.
  # { "subnet_1234" => "10.0.1.0/4", ...}
  # output."${keys(vpc_private_subnets)[0]}"
  value = module.ec2_module.instance_private_ip
}

# output "vpc_private_subnet0" {
#   # Result is a map of subnet id to cidr block, e.g.
#   # { "subnet_1234" => "10.0.1.0/4", ...}
#   # output."${keys(vpc_private_subnets)[0]}"
#   value = output.vpc_private_subnets
# }
