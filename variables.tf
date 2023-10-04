locals {
  conf = {
    auth = {
        region      = "us-east-1"
        access_key  = "AKIAWEV65ZSIELSYEQM5"
        secret_key  = "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" 
    }

    instance = {
        tags_name = { 
            Name = "Terraform-Test-01" 
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