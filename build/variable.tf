// AWS Configuration

variable "access_key" {}
variable "secret_key" {}

variable "region" {
  default = "ap-south-1"
}

// Availability zones for the region
variable "az1" {
  default = "ap-south-1a"
}

//  Existing SSH Key on the AWS
variable "keyname" {
  default = "Madhuri"
}

variable "adminsport" {
  default = "8443"
}

variable "bootstrap-fgtvm" {
  // Change to your own path
  type    = string
  default = "fgtvm.conf"
}


// license file for the active fgt
variable "license" {
  // Change to your own byol license file, license.lic
  type    = string
  default = "license.lic"
}

// License Type to create FortiManagere-VM
// Provide the license type for FortiManager-VM Instances, either byol or payg.
variable "license_type" {
  default = "byol"
}

variable "fmgami" {
  type = map(any)
  default = {
    ap-south-1 = {
      arm = {
        byol = "ami-0f4e889fd933a47b5"
      },
      x86 = {
        byol = "ami-0f4e889fd933a47b5"
      }
    }
  }
}





variable "vpccidr" {
  default = "10.10.0.0/16"
}

variable "publiccidraz1" {
  default = "10.10.0.0/24"
}

variable "privatecidraz1" {
  default = "10.10.1.0/24"
}



// instance architect
// Either arm or x86
variable "arch" {
  default = "x86"
}

// instance type needs to match the architect
// c5n.xlarge is x86_64
// c6g.xlarge is arm
// For detail, refer to https://aws.amazon.com/ec2/instance-types/
variable "size" {
  default = "m5.2xlarge"
}
