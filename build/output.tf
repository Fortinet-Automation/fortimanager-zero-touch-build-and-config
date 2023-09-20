output "fortimanager_private_ip" {
	value = aws_instance.fortimanager-vm.private_ip
}

output "fortimanager_public_ip" {
	value = aws_instance.fortimanager-vm.public_ip
}

output "fortimanager_vpc_id" {
	value = aws_vpc.fmgvm-vpc.id
}
