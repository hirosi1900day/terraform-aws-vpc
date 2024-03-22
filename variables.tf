variable "system" {
  type = string
}
variable "env" {
  type = string
}
variable "cidr_vpc" {
  type = string
}
variable "cidr_public" {
  type = list(string)
}
variable "cidr_private" {
  type = list(string)
}
variable "cidr_secure" {
  type = list(string)
}