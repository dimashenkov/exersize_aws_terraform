# ----root/outputs.tf------

#storage
output "Bucket Name" {
  value = "${module.storage.bucketname}"
}

#------------------------------------
#networking
output "Public subnets" {
  value = "${join(", ", module.networking.public_subnets)}"
}

output "Subnet IPs" {
  value = "${join(", ", module.networking.subnet_ips)}"
}

output "Public security group" {
  value = "${module.networking.public_sg}"
}

#--------------------------------------
#compute 

output "Dev  Instance Public IP" {
  value = "${module.compute.wp_dev_public_ip}"
}
