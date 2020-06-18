variable "ami" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
}

variable "region" {
  type        = string
  description = "The AWS region to create the infrastructure in"
}

variable "subnet_id" {
  type        = string
  description = "The subnet to associate the instance with"
}

variable "access" {
  type        = string
  description = "Access needed for AWS"
}

variable "key" {
  type       = string
  description = "secret key"
}
