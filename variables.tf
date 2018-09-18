variable "region" {
  default = "us-east-2"
}
variable "AmiLinux" {
  type = "map"
  default = {
    us-east-2 = "ami-ea87a78f"
  }  
}
variable "aws_access_key" {
  default = ""
}

variable "aws_secret_key" {
  default = ""
}

variable "vpc-fullcidr" {
    default = "172.28.0.0/16"
}
variable "Subnet-Public-AzA-CIDR" {
  default = "172.28.0.0/24"
}
variable "Subnet-Private-AzA-CIDR" {
  default = "172.28.3.0/24"
}
variable "key_name" {
  default = "ubuntu"
}
