### Terraform init
```sh
terraform init -backend-config "region=eu-central-1" -backend-config "profile=default"
```

### Terraform apply
```sh
terraform apply -var="iam_profile=danit"
```