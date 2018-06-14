resource "aws_key_pair" "mykey"{
  key_name = "mykey"
  public_key =  "${file("${var.PATH_TO_PUBLIC_KEY}")}"
}

resource "aws_instance" "example" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.mykey.key_name}"

  
  provisioner "file" {
    source = "script.sh"
    destination = "/tmp/script.sh"
  }
  provisioner "file" {
    source = "custom_404.html"
    destination = "/tmp/custom_404.html"
  }
  provisioner "file" {
    source = "nginx.conf"
    destination = "/tmp/nginx.conf"
  }
  provisioner "remote-exec" {
    inline = [
    "chmod +x /tmp/script.sh",
    "chmod 755 /tmp/nginx.conf",
    "sudo /tmp/script.sh"
    ]
  }
  
  
  provisioner "file" {
    source = "helloworld.py"
    destination = "/tmp/helloworld.py"
  }
  
  
    connection {
 user = "${var.INSTANCE_USERNAME}"
        private_key = "${file("${var.PATH_TO_PRIVATE_KEY}")}"
              }
}

output "ip" {
  value = "${aws_instance.example.public_ip}"
}