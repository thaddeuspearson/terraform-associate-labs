module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  vpc_name = "demo_vpc"
}

module "subnet_module" {
  source            = "./modules/subnet"
  vpc_id            = module.vpc.vpc_id
  subnet_cidr       = "10.0.1.0/24"
  subnet_name       = "demo-subnet"
  availability_zone = "us-east-1a"
}
