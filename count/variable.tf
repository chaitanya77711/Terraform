variable "instance" {
    type = list
    default = ["mongodb", "catalogue", "frontend", "redis", "user", "cart", "mysql", "shipping", "rabbitmq", "payment", "dispatch"]
}

variable "zone_id" {
    default = "Z0567399GCERTCY8WIE5"
}

variable "domain_name" {
    default = "devops7.online"
}

variable "players_name" {
    type = list(string)
   default = ["dhoni","csk","THALA","MS",]
}

variable "players_name_set" {
    type = set(string)
   default = ["dhoni","csk","THALA","MS",]
}   