# final-project

Important!!
Before starting provisioning dont forget to change vpc and subnets in the the terraform.tfvars or you can create yours with terraform :)

How to start:

1.
### Terraform init
```sh
terraform init -backend-config "region=eu-central-1" -backend-config "profile=default"
```
NOTE: Change region and profile to yours
### Terraform apply
```sh
terraform apply -var="iam_profile=danit"
```
NOTE: iam_profile change to yours or it will use defalt profle

2. When cluster will be created you have to create record name for the app in the route53
