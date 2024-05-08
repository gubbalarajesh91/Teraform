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

variable "tags" {
  default = {
    Project = "Expense"
    Environment = "Dev"
    Module = "DB"
    Name = "DB"
  }
}

#variable "availability_zone_names" {
#  type    = list(string)
#  default = ["us-west-1a"]
#}

#variable "docker_ports" {
#  type = list(object({
#    internal = number
#    external = number
#    protocol = string
#  }))
#  default = [
#    {
#      internal = 8300
#      external = 8300
#      protocol = "tcp"
#    }
#  ]
#}
