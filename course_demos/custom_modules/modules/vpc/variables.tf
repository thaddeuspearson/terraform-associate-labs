variable "vpc_name" {
  description = "name of VPC"
  type        = string
  default     = "my-cool-vpc-for-modules"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
