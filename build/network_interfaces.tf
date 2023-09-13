resource "aws_network_interface" "fortimanager-eth0" {
    description = "Fortimanager - Port 1"
    subnet_id = aws_subnet.publicsubnetaz1.id
}

resource "aws_network_interface_sg_attachment" "fortimanager-nic-sg-attach" {
    depends_on = [  ]
    security_group_id = aws_security_group.Fortimanager-SG.id
    network_interface_id = aws_network_interface.fortimanager-eth0.id
}