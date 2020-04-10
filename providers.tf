# Provider Configuration
  provider aws {
  region     = "ap-south-1"
  access_key = "AKIAI4ZBWX62FFRY75GA"
  secret_key = "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"
}

# generic for any region.
data "aws_region" "current" {}

data "aws_availability_zones" "available" {}

# Not required: currently used in conjuction with using
# icanhazip.com to determine local workstation external IP
# to open EC2 Security Group access to the Kubernetes cluster.
# See workstation-external-ip.tf for additional information.
provider "http" {}
