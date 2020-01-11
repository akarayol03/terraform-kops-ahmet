# terraform-kops-farrukh


kops  create   cluster   acirrustech.com   --state=s3://acirrustech.com    --node-count=3  --zones="eu-west-1a,eu-west-1b,eu-west-1c"  --node-size="t2.micro"   --master-size="t2.micro"   --master-zones="eu-west-1a,eu-west-1b,eu-west-1c"  --networking="weave"  --topology="private"     --bastion="true"  --out=.    --target="terraform"



# Once it is created
1. Open port of bastion sec group to 22 for world. 
2. cp kubectl to bastion.host:~/
3. scp -r ~/.kube/config bastion.host:~/
