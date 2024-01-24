provider "aws" {
  region = "ap-south-1"
} 

module "network" {
  source = "git::https://github.com/nagababudba0999/terraformclassrepo.git//Network"
  vpc_cidr = "30.0.0.0/16"
  subnet_cidr = "30.0.1.0/24"
  vpc_tags = {
     environment = "stage"
     Project = "abc"
     owner = "nagababu"
     Name = "prod-vpc"
  }
}

module "sg" {
  source = "git::https://github.com/nagababudba0999/terraformclassrepo.git//Security_Group"
  sg_ports = [8001,8002,8003]
  vpc_id = module.network.vpc_id
  sg_cidr_block = [module.network.vpc_cidr]
  sg_tags = {
    Name = "prod-sg"
    Environment = "prod"
  }
}
