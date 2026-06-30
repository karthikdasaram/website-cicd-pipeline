provider "aws" {  
  region = "eu-north-1"                      
} 
 
resource "aws_instance" "K8-M" { 
  ami = "ami-05bfa4a7765f38076" 
  instance_type = "t3.small" 
  key_name = "ec2"                  
  tags = { 
    Name = "Kmaster"                                    
  } 
} 
 
resource "aws_instance" "K8-S1" { 
  ami = "ami-05bfa4a7765f38076" 
  instance_type = "t3.small" 
  key_name = "ec2" 
  tags = { 
    Name = "Kslave1"                                         
  } 
} 
resource "aws_instance" "K8-S2" { 
ami = "ami-05bfa4a7765f38076" 
instance_type = "t3.small" 
key_name = "ec2" 
tags = { 
Name = "Kslave2"                                           
} 
}
