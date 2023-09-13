resource "aws_internet_gateway" "fortimanager-internet-gw" {
    vpc_id = aws_vpc.fmgvm-vpc.id 
    tags = {
      Name = "fortimanager-igw"
    }

}

// Route Table

resource "aws_route_table" "fmgpublicrt" {
    vpc_id = aws_vpc.fmgvm-vpc.id
    tags = {
      Name = "fortimanager-public-rt"
    }
  
}

// Route

resource "aws_route" "fmcpublic-route" {
    route_table_id = aws_route_table.fmgpublicrt.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.fortimanager-internet-gw.id

}

// Route Table Association

resource "aws_route_table_association" "fortimanager-rt-association" {
    subnet_id = aws_subnet.publicsubnetaz1.id
    route_table_id = aws_route_table.fmgpublicrt.id
  
}



