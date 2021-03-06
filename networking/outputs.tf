#---networking/outputs.tf------
output "public_subnets" {
  value = "${aws_subnet.wp_public_subnet.*.id}"
}

output "private_subnets" {
  value = "${aws_subnet.wp_private_subnet.*.id}"
}

output "public_sg" {
  value = "${aws_security_group.wp_public_sg.id}"
}

output "private_sg" {
  value = "${aws_security_group.wp_private_sg.id}"
}

output "subnet_ips" {
  value = "${aws_subnet.wp_public_subnet.*.cidr_block}"
}

#---new----
output "db_subnet_group_name" {
  value = "${aws_db_subnet_group.wp_rds_subnetgroup.name}"
}

output "wp_rds_security_group_ids" {
  value = "${aws_security_group.wp_rds_sg.id}"
}

output "wp_dev_security_group_ids" {
  value = "${aws_security_group.wp_dev_sg.id}"
}

output "wp_vpc_id" {
  value = "${aws_vpc.wp_vpc.id}"
}

output "wp_elb_id" {
  value = "${aws_elb.wp_elb.id}"
}

output "wp_elb_dns_name" {
  value = "${aws_elb.wp_elb.dns_name}"
}

output "wp_elb_zone_id" {
  value = "${aws_elb.wp_elb.zone_id}"
}
