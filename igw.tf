resource "aws_internet_gateway" "acirrustech-com" {
  vpc_id = "${aws_vpc.acirrustech-com.id}"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}