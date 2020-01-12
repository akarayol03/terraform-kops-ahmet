resource "aws_eip" "eu-west-2a-acirrustech-com" {
  vpc = true

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "eu-west-2a.acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}

resource "aws_eip" "eu-west-2b-acirrustech-com" {
  vpc = true

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "eu-west-2b.acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}

resource "aws_eip" "eu-west-2c-acirrustech-com" {
  vpc = true

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "eu-west-2c.acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}