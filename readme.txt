#terraform must be installed/downloaded and added to your path
#example path update: export PATH=/home/ec2-user/environment/terraform_nginx/:$PATH  
#AMI used: ami-a4dc46db = [Copied ami-a4dc46db from us-east-1] ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-20180522
#public IP must be added to firewall whitelist "curl ifconfig.co" (using AWS in this example)
#in order to ssh: "ssh ubuntu@publicIP -i mykey" (chmod 0700 mykey to ensure perms are correct)
#there are some files in .gitignore that are required to execute successfully:
#terraform.tfvars with AWS_ACCESS_KEY = "" & AWS_SECRET_KEY = ""
#mykey and mykey.pub - Generate with "ssh-keygen -f mypub"
#this instance won't work unless we get a service running and listening on port 3400. install python and execute: "python helloworld.py &" to launch it in the background
#use curl to test with Host to see "hello world": [curl -v http://localhost:3200 -H "Host: www.example.com"] - This will show "hello world
#curl to see 404 page: [curl -v http://localhost:3200] - This will show the custom Error 404 page
