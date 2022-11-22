# Create a Null Resource and Provisioners
resource "null_resource" "name" {
    depends_on = [ module.ec2_public ]
    # Connection block for Provisioners to Connect to EC2 Instance
    connection {
      type          = "ssh"
      host          = aws_eip.bastion_eip.public_ip
      user          = "ec2-user"
      password      = ""
      private_key   = terraform-key.pem  
    }
}