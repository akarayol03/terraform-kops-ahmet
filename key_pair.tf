
resource "aws_key_pair" "kubernetes-acirrustech-com-a039e3a23854ef615a76dc5002b5b6fe" {
  key_name   = "kubernetes.acirrustech.com-a0:39:e3:a2:38:54:ef:61:5a:76:dc:50:02:b5:b6:fe"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.acirrustech.com-a039e3a23854ef615a76dc5002b5b6fe_public_key")}"
}
