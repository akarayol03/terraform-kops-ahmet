
resource "aws_subnet" "eu-west-2a-acirrustech-com" {
  vpc_id            = "${aws_vpc.acirrustech-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "eu-west-a"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "eu-west-2a.acirrustech.com"
    SubnetType                              = "Private"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
    "kubernetes.io/role/internal-elb"       = "1"
  }
}

resource "aws_subnet" "eu-west-2b-acirrustech-com" {
  vpc_id            = "${aws_vpc.acirrustech-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "eu-west-2b"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "eu-west-2b.acirrustech.com"
    SubnetType                              = "Private"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
    "kubernetes.io/role/internal-elb"       = "1"
  }
}

resource "aws_subnet" "eu-west-2c-acirrustech-com" {
  vpc_id            = "${aws_vpc.acirrustech-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "eu-west-2c"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "eu-west-2c.acirrustech.com"
    SubnetType                              = "Private"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
    "kubernetes.io/role/internal-elb"       = "1"
  }
}

resource "aws_subnet" "utility-eu-west-2a-acirrustech-com" {
  vpc_id            = "${aws_vpc.acirrustech-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "eu-west-2a"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "utility-eu-west-2a.acirrustech.com"
    SubnetType                              = "Utility"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
    "kubernetes.io/role/elb"                = "1"
  }
}

resource "aws_subnet" "utility-eu-west-2b-acirrustech-com" {
  vpc_id            = "${aws_vpc.acirrustech-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "eu-west-2b"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "utility-eu-west-2b.acirrustech.com"
    SubnetType                              = "Utility"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
    "kubernetes.io/role/elb"                = "1"
  }
}

resource "aws_subnet" "utility-eu-west-2c-acirrustech-com" {
  vpc_id            = "${aws_vpc.acirrustech-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "eu-west-2c"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "utility-eu-west-2c.acirrustech.com"
    SubnetType                              = "Utility"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
    "kubernetes.io/role/elb"                = "1"
  }
}