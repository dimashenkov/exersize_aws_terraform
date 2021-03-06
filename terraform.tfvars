aws_region  = "us-east-1"
aws_profile = "superman"
project_name = "terraform_exersize"

#networking
vpc_cidr    = "10.0.0.0/16"
public_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
private_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
rds_cidrs    = ["10.0.5.0/24", "10.0.6.0/24","10.0.7.0/24"]

accessip = ["0.0.0.0/0"]

elb_healthy_threshold   = "2"
elb_unhealthy_threshold = "2"
elb_timeout 		= "3"
elb_interval		= "30"

# storage
# bez .co.uk za6toto to 6te se dobavi s script ponatam
domain_name = "kurshum"

#DB
db_instance_class	= "db.t2.micro"
dbname			= "supermandb"
dbuser			= "superman"
dbpassword		= "superman123456"

#ansible
public_key_path = "/root/.ssh/superman.pub"
key_name = "superman"

#compute
dev_instance_type	= "t2.micro"
dev_ami			= "ami-b73b63a0"
lc_instance_type = "t2.micro"

asg_max 		= "2"
asg_min			= "1"
asg_grace		= "300"
asg_hct			= "EC2"
asg_cap			= "2"

delegation_set 		= "N2S3DXC7A1TCAA"