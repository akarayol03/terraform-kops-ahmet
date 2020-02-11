
resource "aws_elb" "api-originalpeak-com" {
  name = "api-originalpeak-com-ai4crq"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-originalpeak-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-originalpeak-com.id}", "${aws_subnet.utility-eu-west-1b-originalpeak-com.id}", "${aws_subnet.utility-eu-west-1c-acirrustech-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  cross_zone_load_balancing = false
  idle_timeout              = 300

  tags = {
    KubernetesCluster                       = "originalpeak.com."
    Name                                    = "api.originalpeak.com."
    "kubernetes.io/cluster/originalpeak.com." = "owned"
  }
}

resource "aws_elb" "bastion-originalpeak-com" {
  name = "bastion-originalpeak-com-1fi9s4"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-originalpeak-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-originalpeak-com.id}", "${aws_subnet.utility-eu-west-1b-originalpeak-com.id}", "${aws_subnet.utility-eu-west-1c-acirrustech-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                       = "originalpeak.com."
    Name                                    = "bastion.originalpeak.com."
    "kubernetes.io/cluster/originalpeak.com." = "owned"
  }
}
