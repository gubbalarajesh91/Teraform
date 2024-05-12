variable "image_id" {
  type = string
  default = "ami-090252cbe067a9e58"
  description = "RHEL-9-Practice AMI ID"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
  description = "AWS Instance"
}

variable "instance_name" {
    default = "db"
}