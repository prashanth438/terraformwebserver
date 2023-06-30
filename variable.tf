variable "region" {
  default = "ap-northeast-1"
  type    = string
}

variable "ami" {
  default = "ami-0ed99df77a82560e6"

  type = string

}

variable "instance_type" {
  default = "t2.micro"
  type    = string

}

variable "key_name" {
  default = ""
  type    = string

}

variable "private_key_path" {
  default = ""
  type    = string

}

