
resource "aws_iam_instance_profile" "bastions-acirrustech-com" {
  name = "bastions.acirrustech.com"
  role = "${aws_iam_role.bastions-acirrustech-com.name}"
}

resource "aws_iam_instance_profile" "masters-acirrustech-com" {
  name = "masters.acirrustech.com"
  role = "${aws_iam_role.masters-acirrustech-com.name}"
}

resource "aws_iam_instance_profile" "nodes-acirrustech-com" {
  name = "nodes.acirrustech.com"
  role = "${aws_iam_role.nodes-acirrustech-com.name}"
}

resource "aws_iam_role" "bastions-acirrustech-com" {
  name               = "bastions.acirrustech.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.acirrustech.com_policy")}"
}

resource "aws_iam_role" "masters-acirrustech-com" {
  name               = "masters.acirrustech.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.acirrustech.com_policy")}"
}

resource "aws_iam_role" "nodes-acirrustech-com" {
  name               = "nodes.acirrustech.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.acirrustech.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-acirrustech-com" {
  name   = "bastions.acirrustech.com"
  role   = "${aws_iam_role.bastions-acirrustech-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.acirrustech.com_policy")}"
}

resource "aws_iam_role_policy" "masters-acirrustech-com" {
  name   = "masters.acirrustech.com"
  role   = "${aws_iam_role.masters-acirrustech-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.acirrustech.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-acirrustech-com" {
  name   = "nodes.acirrustech.com"
  role   = "${aws_iam_role.nodes-acirrustech-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.acirrustech.com_policy")}"
}
