# vpc
resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "MyVPC"
    }
}

# subnet
resource "aws_subnet" "mysubnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true

    tags = {
      Name = "mypublicsub"
    }
  
}


# internet-gateway
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.myvpc.id

    tags = {
      Name = "main-igw"
    }
  
}


# route-table
resource "aws_route_table" "routetb" {
    vpc_id = aws_vpc.myvpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }

    tags = {
      Name = "routetable1"
    }   
  
}

# subnet → route table association 
resource "aws_route_table_association" "subney_assoc" {
    subnet_id = aws_subnet.mysubnet.id
    route_table_id = aws_route_table.routetb.id
  
}
 

resource "aws_security_group" "my_sg" {
  name   = "my-sg"
  vpc_id = aws_vpc.myvpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

