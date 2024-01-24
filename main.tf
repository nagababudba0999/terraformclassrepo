module "network" {
  source = "git::https://github.com/nagababudba0999/terraformclassrepo.git//Network"
  vpc_cidr = "20.0.0.0/16"
  subnet_cidr = "20.0.1.0/24"
  vpc_tags = {
     environment = "stage"
     Project = "abc"
     owner = "nagababu"
     Name = "stage-vpc"
  }
}
