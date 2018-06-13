#terraform must be installed and added to your path
#example path update: export PATH=/home/ec2-user/environment/terraform_nginx/:$PATH  
#AMI used: ami-a4dc46db = [Copied ami-a4dc46db from us-east-1] ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-20180522
#public IP must be added to firewall whitelist "curl ifconfig.co"
#in order to ssh: "ssh ubuntu@publicIP -i mykey" (chmod 0700 mykey to ensure perms are correct)