#---networking/outputs.tf------
output "public_subnets" {
  value = "${aws_subnet.wp_public_subnet.*.id}"
}

output "public_sg" {
  value = "${aws_security_group.wp_public_sg.id}"
}

output "subnet_ips" {
  value = "${aws_subnet.wp_public_subnet.*.cidr_block}"
}
#---new----
output "db_subnet_group_name" {
	value = "${aws_db_subnet_group.wp_rds_subnetgroup.name}"
}

output "vpc_security_group_ids" {
	value = "${aws_security_group.wp_rds_sg.id}"
}

output "wp_dev_public_ip" {
	value = "${aws_instance.wp_dev.public_ip}"
}

output "wp_dev_instance_id" {
	value = "${aws_instance.wp_dev.id}"
}