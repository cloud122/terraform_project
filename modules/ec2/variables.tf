# bucket name

variable "instance_name" {
    type = string
    description = "Name of the EC2"
    default = "gc1-ec2-var-module-default" 
}

variable "instance_subnet_id" {
    type = string
    description = "Subnet id to attach instance"
    default = "" 
}

# variable "common_tags" {
#     type = map(string)
#     description = "Map of tags to apply"
#     default = {}
# }
