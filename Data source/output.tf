output "id" {
    value = data.aws_ami.RoboShop.id
}

output "instance_info" {
    value = data.aws_instance.chaitu_instance
}