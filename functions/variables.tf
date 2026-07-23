variable "common_tags" {
    type = map 
    default = {
        enivronment = "dev"
        project = "roboshop"
        terraform = "true"
    }
}

variable "ec2_tags" {
    default = {
        Name = "functions demo"
        environment = "prod"
    }
}

variable "sg_tags" {
    default = {
        Name = "-apply-all"
    }
}