
output "cloud9_url" {
  value = "https://${var.region}.console.aws.amazon.com/cloud9/ide/${aws_cloud9_environment_ec2.this.id}"
}

output "cloud9_public_ip" {
  value = aws_eip.cloud9_eip.public_ip
}