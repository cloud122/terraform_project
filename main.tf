/*

export AWS_ACCESS_KEY_ID="xxxxxxxxxxxxx";\
export AWS_SECRET_ACCESS_KEY="xxxxxxxxx"
export AWS_DEFAULT_REGION="us-west-2"
*/
provider "aws" {
  region = var.web_region
}
module "s3_module" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "vpc_module" {
  source    = "./modules/vpc"
  infra_env = var.infra_env
}

module "ec2_module" {
  source             = "./modules/ec2"
  instance_name      = var.instance_name
  instance_subnet_id = keys(module.vpc_module.vpc_private_subnets)[1]

}

module "lambda_module" {
  source = "./modules/lambda"

}

module "dynamodb_module" {
  source      = "./modules/dynamodb"
  ENVIRONMENT = var.ENVIRONMENT

}

module "dynamodb_module_remote" {
  source      = "git::https://github.com/cloud122/terraform_project_child_mod.git"
  ENVIRONMENT = var.ENVIRONMENT

}