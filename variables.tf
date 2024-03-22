variable "system" {
  type = string
  description = "システム名"
}
variable "env" {
  type = string
  description = "環境名"
}
variable "cidr_vpc" {
  type = string
  description = "vpcのCIDR"
}
variable "cidr_public" {
  type = list(string)
  description = "public subnetのCIDR"
}
variable "cidr_private" {
  type = list(string)
  description = "private subnetのCIDR"
}
variable "cidr_secure" {
  type = list(string)
  description = "secure subnetのCIDR"
}