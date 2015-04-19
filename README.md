# sensu-by-packer
sensu + rabbitmq + redis + uchiwa create image by packer

# Requirement
* variable definition  
prepare this    
json/variables.json
<pre>
{
    "aws_region": "YOUR_AWS_REGION",
    "aws_vpc_id": "YOUR_VPC_ID",
    "aws_subnet_id": "YOUR_SUBNET_ID"
}
</pre>
* ssl cert & key files  
data_bags/sensu/ssl.json  
<pre> 
{
  "id": "ssl",
  "server": {
    "key": "",
    "cert": "",
    "cacert": ""
  },
  "client": {
    "key": "",
    "cert": ""
  }
}
</pre>
prepare this  
ssl.json that is created when you run the sensu-chef/examples/ssl/generate_databag.rb  
of sensu-chef  
sensu-chef see below:  
https://github.com/sensu/sensu-chef

# Usage
`packer build -var-file=variables.json ami-sensu-centos6.json`
