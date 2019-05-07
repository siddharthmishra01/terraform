#output "vpc_id" {
#  value 	=	 "${aws_vpc.vpc.id}"
#}
#output "aws_instance_public_dns" {
#  value = "${aws_instance.nginx.public_dns}"
#}

output "region" {
  value = "${data.aws_region.current.name}"
}

#output "availability_zone" {
#  value = "${data.aws_availability_zones.available.names}"
#}


output "vpc_id" {
  value ="${aws_vpc.vpc.id}"
}

output "dhcp_id" {
  value = "${aws_vpc_dhcp_options.DHCP.id}"
}

output "internet_gateway" {
  value = "${aws_internet_gateway.IGW.id}"
}


output "public-subnet_id" {
  value = "${aws_subnet.public_subnets.*.id}"
}

output "public-route-table" {
  value = "${aws_route_table.public_route_table.id}"
}


output "private-subnet_id" {
  value = "${aws_subnet.private_subnets.*.id}"
}

#output "eip" {
#  value = "${aws_eip.nateip.}"
#}

output "nat_gateway" {
  value = "${aws_nat_gateway.natgw.*.id}"
}
output "private-route-table" {
  value = "${aws_route_table.private_route_table.*.id}"
}

output "ec2_security_group" {
  value = "${aws_security_group.nginx-sg.name}"

}

output "ec2_security_group_id" {
  value = "${aws_security_group.nginx-sg.id}"

}

output "ami_id" {
  value = "${aws_instance.nginx.ami}"
}

output "aws_instance_public_dns" {
  value = "${aws_instance.nginx.public_dns}"
}

output "instance_id" {
  value = "${aws_instance.nginx.id}"
}

output "instance_type" {
  value = "${var.instance_type}"
}


output "ebs_block_device" {
  value = ["${aws_instance.nginx.ebs_block_device}"]
}

output "ebs_root_device" {
  value = ["${aws_instance.nginx.root_block_device}"]
}

#output "root_device_type" {
#  value = ["${aws_instance.web.root_block_device_type}"]
#}

#output "ebs_volume" {
#  value = ["${aws_instance.web.ebs_volume.id}"]
#}
