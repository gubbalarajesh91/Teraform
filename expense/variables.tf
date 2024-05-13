variable "instance_names" {
  type = list
  default = ["db", "backend", "frontend"]
}

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

variable "common_tags" {
  default = {
    Project = "Expense"
    Environment = "Dev"
    Terraform = "true"
    #Module = "DB"
    #Name = "DB"
    
  }
}

variable "sg_name" {
  default = "allow_ssh"
}

variable "sg_description" {
  default = "allowing port 22"
}

variable "ssh_port" {
  default = 22
}

variable "protocol" {
  default = "tcp"
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
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
