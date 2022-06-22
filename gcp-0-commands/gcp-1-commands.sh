# You can find the installer info for Terraform here:
# https://www.terraform.io/downloads.html

# First we'll start by making sure Terraform is installed and check out the
# help command baked in to the cli.
terraform version

terraform -help

# Terraform follows the terraform <command> <subcommand> syntax
# Options use a single dash whether it's a single character option
# or full word.

# Now we will follow the standard Terraform workflow
terraform init
terraform plan -out m3.tfplan
terraform apply "m3.tfplan"

# If you are done, you can tear things down to save $$
terraform destroy