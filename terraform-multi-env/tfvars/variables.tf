#ec2 variable
variable "instance_names" {
  type = map
#   default = {
#     db-dev = "t3.small"
#     backend-dev = "t3.micro"
#     frontend-dev = "t3.micro"
# }
}

variable "envinorment" {
  # default = "dev"
  
}

variable "common_tags" {
  type = map
  default = {
    Project = "Expense"
    Terraform = "true"
  }
}

#r53 variables
variable "zone_id" {
  default = "Z01554241D4PXADZBZ1KY"
  
}

variable "domain_name" {
  default = "indix.store"
  
}

#This is error This need to define well
# variable "ssh_port" {
#   type = list(object({
#     from_port = number
#     to_port = number
#     protocol = string


#   }))

#   default = [{
#     from_port = 22
#     protocol = "tcp"
#     to_port = 22
#   }]
# }
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
