resource "aws_security_group" "Fortimanager-SG" {
  name = "Fortimanager-Public-allow"
  description = "Security Group for Fortimanager"
  vpc_id = aws_vpc.fmgvm-vpc.id
  ingress {
    from_port = 22
    to_port = 22
    protocol = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress  {
    from_port = 443
    to_port = 443
    protocol = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
      ingress  {
    from_port = 8443
    to_port = 8443
    protocol = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
      ingress  {
    from_port = 9443
    to_port = 9443
    protocol = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
      ingress  {
    from_port = 80
    to_port = 80
    protocol = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
      ingress  {
    from_port = 514
    to_port = 514
    protocol = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
      ingress  {
    from_port = 541
    to_port = 541
    protocol = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
      ingress  {
    from_port = 8080
    to_port = 8080
    protocol = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = " Fortinet Public Allow"
  }
}
