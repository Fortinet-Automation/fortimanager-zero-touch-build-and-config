// Public IP 

resource "aws_eip" "fortimanager-eip" {
    vpc = true 
    network_interface = aws_network_interface.fortimanager-eth0.id
    depends_on = [ aws_instance.fortimanager-vm ]

}
