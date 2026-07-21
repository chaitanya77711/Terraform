# variable "instance" {
#     type = map
#     default = {
#         mongodb = "t3.micro"
#         catalogue = "t3.small"
#     }
# }

variable "zone_id" {
    default = "Z0567399GCERTCY8WIE5"
}

variable "domain_name" {
    default = "devops7.online"
}

variable "instance" {
    type = list
    default = ["mongodb", "catalogue"]
}   