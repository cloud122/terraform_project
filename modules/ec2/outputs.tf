# bucket name
output "instance_id" {
    value = aws_instance.test_instance.id
}

output "instance_private_ip" {
    value = aws_instance.test_instance.private_ip
}
