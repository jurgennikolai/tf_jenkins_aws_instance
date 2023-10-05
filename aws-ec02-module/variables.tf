locals {
  conf = {
    auth = {
        region      = "us-east-1"
    }

    instance = {
        tags_name = { 
            Name = "${var.instance_name}"
        }
        ami     = "ami-08a52ddb321b32a8c"
        type    = "t2.micro"
    }

    key_pair = {
        name = "aws-conn-01"
    }

    network = {
        security_groups = ["sg-07e7b05c15d612112"]
    }

    ebs = {
        device_name = "/dev/xvda"
        volume_size = "10"
        volume_type = "gp2"  
    }

  }
}

variable "instance_name" {
    type = string
    default = "Terraform-Test-01"  
    description = "Instance Name"
}