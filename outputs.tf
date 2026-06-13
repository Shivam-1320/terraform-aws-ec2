<<<<<<< HEAD
output "public_ip" {
  value = aws_instance.server1.public_ip
}

output "instance_id" {
  value = aws_instance.server1.id
=======
output "instance_id" {
  value = aws_instance.web.id
}

output "public_ip" {
  value = aws_instance.web.public_ip
}

output "public_dns" {
  value = aws_instance.web.public_dns
>>>>>>> af33c2db38991f2ce4dda3744df5169b2aabfa6e
}