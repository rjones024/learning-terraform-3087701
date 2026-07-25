variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "Name filter and owner filter for AMI"
  type = object ({
    name  = string
    owner = string
  })
  default = {
    name  = "rj_apache_test"
    owner = "663770316195"
  }
}
 
variable "environment" {
  description = "deployment environment"
  type = object ({
    name           = string
    netowrk_prefix = string
  })
  default = {
    name           = "dev"
    network_prefix = "10.0"
  }
}

variable "min_size" {
  description = "min instances in ASG"
  default     = 1
}

variable "max_size" {
  description = "max instances in ASG" 
  default     = 2
}

