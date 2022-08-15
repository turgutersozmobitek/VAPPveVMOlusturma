terraform {
  required_providers {
    vcd = {
      source = "vmware/vcd"
      version = "3.6.0"
    }
  }
}
# Connect VMware vCloud Director Provider
provider "vcd" {
  user                 =  var.cd_username
  password             =  var.cd_password
  org                  = "System"
  url                  =  var.cd_vdcadres
  max_retry_timeout    = "300"
  allow_unverified_ssl = "true"
}