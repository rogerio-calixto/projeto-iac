# projeto-iac
   Simulações IaC usando Terraform

## Comandos Terraform

### Setando ambiente no terraform
   - terraform init -reconfigure -backend-config=".\backend-config\xxx.conf"

### Comandos Gerais

   - terraform plan -var-file="xxx.tfvars" -out="tfplan.out"
   - terraform apply "tfplan.out"
   - terraform destroy -var-file="xxx.tfvars"
   - terraform output -json

   Onde xxx se refere ao ambiente desejado: dev, hml ou prd