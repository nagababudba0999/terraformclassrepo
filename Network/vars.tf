variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "vpc_tags" {
    default = {
        environment = "Dev"
        Project = "abc"
    }
}

variable "subnet_cidr" {
    default = "10.0.2.0/24"
}

