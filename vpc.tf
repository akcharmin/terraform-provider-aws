provider "aws" {
  region = "ca-central-1"
}


#vpc.tf
resource "aws_vpc" "vpc23" {
    cidr_block = "10.10.0.0/20" 
    tags = {
      "Name" = "myvpc23"
      "Env"  = "Dev"
    }
    
}

#ec2.tf
resource "aws_instance" "server1" {
    ami = "ami-08523c5075ba75813"
    instance_type = "t2.micro"
    key_name = "cckey"
    tags = {
      "Name" = "dbserver"
      "Environmet" = "Dev"
    }
    security_groups = [ "CCSG" ]
}

resource "aws_s3_bucket" "mys3" {
    bucket = "class23cd"
    acl = "private"

    tags = {
      "Name" = "class23abc"
      Environment = "Dev"
    }
  
}
