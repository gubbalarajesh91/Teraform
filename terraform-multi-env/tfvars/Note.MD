cd tfvars/
terraform init -backend-config=dev/backend.tf
terraform plan -var-file=dev/dev.tfvars