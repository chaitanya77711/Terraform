output "roboshop_instance" {
    value   = aws_instance.example
    description = "description"
}

output "players_name" {
    value = var.players_name
}

output "players_name_set" {
    value = var.players_name_set
}
