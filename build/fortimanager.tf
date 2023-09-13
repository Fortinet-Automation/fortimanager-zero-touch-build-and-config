// Fortimanager Instance
 resource "aws_instance" "fortimanager-vm" {
    ami = var.fmgami[var.region][var.arch][var.license_type]
    instance_type = var.size 
    availability_zone = var.az1
    #user_data = templatefile("${var.bootstrap-fgtvm}", {
    #type         = "${var.license_type}"
    #license_file = "${var.license}"
    #adminsport   = "${var.adminsport}"
 # })

    root_block_device {
    volume_type = "standard"
    volume_size = "10"
  }

  ebs_block_device {
    device_name = "/dev/sdb"
    volume_size = "100"
    volume_type = "standard"
  }

  network_interface {
    network_interface_id = aws_network_interface.fortimanager-eth0.id
    device_index         = 0
  }

  
  tags = {
    Name = "FortiManagerVM"
  }
   
 }




