# TODO: Designate a cloud provider, region, and credentials

provider "aws" {
  access_key = var.access
  secret_key = var.key
  region = var.region
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  count         = 4
  ami           = var.ami
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id

  tags = {
    name = "Udacity T2 Server"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4

# Code commented out to facilitate deletion of the M4 instances
#resource "aws_instance" "Udacity_M4" {
#  count         = 2
#  ami           = var.ami
#  instance_type = "m4.large"
#  subnet_id     = var.subnet_id

#  tags = {
#   name = "Udactity M4 Server"
#  }
#}
