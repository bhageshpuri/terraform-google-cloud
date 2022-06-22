# Modules are a powerful tool to group data sources and resources together
# into a logical unit that can be reused and distributed. Let's make use
# of the official VPC module on the Terraform registry and a module we
# write ourselves for s3 resources associated with web applications.

terraform console

# Test out the range function
range(var.vpc_subnet_count)
# Try it in a for expression
[for subnet in range(var.vpc_subnet_count): cidrsubnet(var.vpc_cidr_block, 8, subnet)]

# Prepare config
terraform init
terraform fmt -recursive
terraform validate

# For Linux and MacOS
export TF_VAR_gcp_project_id=YOUR_PROJECT_ID

# For PowerShell
$env:TF_VAR_gcp_project_id="YOUR_PROJECT_ID"


# Update the deployment
terraform plan -out m8.tfplan
terraform apply m8.tfplan