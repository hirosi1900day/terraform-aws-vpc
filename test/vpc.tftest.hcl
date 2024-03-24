mock_provider "aws" {}

variables {
 system   = "test"
  env      = "prd"
  cidr_vpc = "10.1.0.0/16"
  cidr_public = [
    "10.1.1.0/24",
    "10.1.2.0/24",
    "10.1.3.0/24"
  ]
  cidr_private = [
    "10.1.101.0/24",
    "10.1.102.0/24",
    "10.1.103.0/24"
  ]
  cidr_secure = [
    "10.1.201.0/24",
    "10.1.202.0/24",
    "10.1.203.0/24"
  ]
}

run "verify" {
  override_data {
    target = data.aws_availability_zones.available
    values = {
      names = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
    }
  }

  module {
    source = "../"
  }

  assert {
    condition = aws_vpc.vpc.tags.Name == "test-prd-vpc"
    error_message = "created the wrong number of s3 objects"
  }
}