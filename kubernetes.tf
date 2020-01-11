locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-acirrustech-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-acirrustech-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-acirrustech-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-acirrustech-com.name}"
  cluster_name                      = "acirrustech.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-eu-west-1a-masters-acirrustech-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-acirrustech-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-acirrustech-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-acirrustech-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-acirrustech-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-acirrustech-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-acirrustech-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-acirrustech-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.eu-west-1a-acirrustech-com.id}", "${aws_subnet.eu-west-1b-acirrustech-com.id}", "${aws_subnet.eu-west-1c-acirrustech-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-acirrustech-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-acirrustech-com.name}"
  region                            = "eu-west-1"
  route_table_private-eu-west-1a_id = "${aws_route_table.private-eu-west-1a-acirrustech-com.id}"
  route_table_private-eu-west-1b_id = "${aws_route_table.private-eu-west-1b-acirrustech-com.id}"
  route_table_private-eu-west-1c_id = "${aws_route_table.private-eu-west-1c-acirrustech-com.id}"
  route_table_public_id             = "${aws_route_table.acirrustech-com.id}"
  subnet_eu-west-1a_id              = "${aws_subnet.eu-west-1a-acirrustech-com.id}"
  subnet_eu-west-1b_id              = "${aws_subnet.eu-west-1b-acirrustech-com.id}"
  subnet_eu-west-1c_id              = "${aws_subnet.eu-west-1c-acirrustech-com.id}"
  subnet_utility-eu-west-1a_id      = "${aws_subnet.utility-eu-west-1a-acirrustech-com.id}"
  subnet_utility-eu-west-1b_id      = "${aws_subnet.utility-eu-west-1b-acirrustech-com.id}"
  subnet_utility-eu-west-1c_id      = "${aws_subnet.utility-eu-west-1c-acirrustech-com.id}"
  vpc_cidr_block                    = "${aws_vpc.acirrustech-com.cidr_block}"
  vpc_id                            = "${aws_vpc.acirrustech-com.id}"
}

output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-acirrustech-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-acirrustech-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-acirrustech-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-acirrustech-com.name}"
}

output "cluster_name" {
  value = "acirrustech.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-eu-west-1a-masters-acirrustech-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-acirrustech-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-acirrustech-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-acirrustech-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-acirrustech-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-acirrustech-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-acirrustech-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-acirrustech-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.eu-west-1a-acirrustech-com.id}", "${aws_subnet.eu-west-1b-acirrustech-com.id}", "${aws_subnet.eu-west-1c-acirrustech-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-acirrustech-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-acirrustech-com.name}"
}

output "region" {
  value = "eu-west-1"
}

output "route_table_private-eu-west-1a_id" {
  value = "${aws_route_table.private-eu-west-1a-acirrustech-com.id}"
}

output "route_table_private-eu-west-1b_id" {
  value = "${aws_route_table.private-eu-west-1b-acirrustech-com.id}"
}

output "route_table_private-eu-west-1c_id" {
  value = "${aws_route_table.private-eu-west-1c-acirrustech-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.acirrustech-com.id}"
}

output "subnet_eu-west-1a_id" {
  value = "${aws_subnet.eu-west-1a-acirrustech-com.id}"
}

output "subnet_eu-west-1b_id" {
  value = "${aws_subnet.eu-west-1b-acirrustech-com.id}"
}

output "subnet_eu-west-1c_id" {
  value = "${aws_subnet.eu-west-1c-acirrustech-com.id}"
}

output "subnet_utility-eu-west-1a_id" {
  value = "${aws_subnet.utility-eu-west-1a-acirrustech-com.id}"
}

output "subnet_utility-eu-west-1b_id" {
  value = "${aws_subnet.utility-eu-west-1b-acirrustech-com.id}"
}

output "subnet_utility-eu-west-1c_id" {
  value = "${aws_subnet.utility-eu-west-1c-acirrustech-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.acirrustech-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.acirrustech-com.id}"
}

provider "aws" {
  region = "eu-west-1"
}
