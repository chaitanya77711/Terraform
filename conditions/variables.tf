variable "environment" {
    default = "dev"
}

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "RHEL 9 image"
}


variable "instance_type" {
    type = string
    default = "t3.micro"
}


variable "tags" {
    type = map
    default = {
        Name = "terraform"
        project = "roboshop"
        terraform = "true"
        environment = "dev"
    } 
}

variable "sg_group" {
    type = string
    default = "terraform-apply-all"
}

variable "sg_group_discription" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "sg_from_port" {
    type = number
    default = 0
}

variable "sg_to_port" {
    type = number
    default = 0
}

variable "sg_protocol" {
    type = number
    default = -1
}

variable "sg_cidr_block" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    type = map
    default = {
    Name = "terraform-apply-all"
    project = "roboshop"
    terraform = "true"
    environment = "dev"
}
}
