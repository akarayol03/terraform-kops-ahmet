
resource "aws_autoscaling_attachment" "bastions-originalpeak-com" {
  elb                    = "${aws_elb.bastion-originalpeak-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-originalpeak-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1a-masters-originalpeak-com" {
  elb                    = "${aws_elb.api-originalpeak-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1a-masters-originalpeak-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1b-masters-originalpeak-com" {
  elb                    = "${aws_elb.api-originalpeak-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1b-masters-originalpeak-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1c-masters-originalpeak-com" {
  elb                    = "${aws_elb.api-originalpeak-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1c-masters-originalpeak-com.id}"
}

resource "aws_autoscaling_group" "bastions-originalpeak-com" {
  name                 = "bastions.originalpeak.com."
  launch_configuration = "${aws_launch_configuration.bastions-originalpeak-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-eu-west-1a-originalpeak-com.id}", "${aws_subnet.utility-eu-west-1b-originalpeak-com.id}", "${aws_subnet.utility-eu-west-1c-originalpeak-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "originalpeak.com."
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.originalpeak.com."
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1a-masters-originalpeak-com" {
  name                 = "master-eu-west-1a.masters.originalpeak.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1a-masters-originalpeak-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-originalpeak-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "originalpeak.com."
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1a.masters.originalpeak.com."
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1b-masters-originalpeak-com" {
  name                 = "master-eu-west-1b.masters.originalpeak.com."
  launch_configuration = "${aws_launch_configuration.master-eu-west-1b-masters-originalpeak-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1b-originalpeak-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "originalpeak.com."
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1b.masters.originalpeak.com."
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1c-masters-originalpeak-com" {
  name                 = "master-eu-west-1c.masters.originalpeak


.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1c-masters-originalpeak-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1c-originalpeak-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "originalpeak.com."
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1c.masters.originalpeak.com."
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-originalpeak-com" {
  name                 = "nodes.originalpeak.com"
  launch_configuration = "${aws_launch_configuration.nodes-originalpeak-com.id}"
  max_size             = "${var.max_size}"
  min_size             = "${var.min_size}"
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-originalpeak-com.id}", "${aws_subnet.eu-west-1b-originalpeak-com.id}", "${aws_subnet.eu-west-1c-originalpeak-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "originalpeak.com."
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.originalpeak.com."
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}
