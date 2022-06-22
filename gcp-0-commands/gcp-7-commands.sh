# Terraform workspaces enable you to deploy multiple instances of a configuration
# using the same base code with different values for the config. The result is 
# separate state files for each workspace. We are going to make use of the 
# terraform.workspace value for naming and dynamic configuration values.

# Prepare config
terraform fmt
terraform validate

# For Linux and MacOS
export TF_VAR_gcp_project_id=YOUR_PROJECT_ID

# For PowerShell
$env:TF_VAR_gcp_project_id="YOUR_PROJECT_ID"

terraform workspace new Development
terraform workspace list

terraform plan -out m9dev.tfplan
terraform apply m9dev.tfplan

terraform workspace new UAT
terraform workspace list
terraform plan -out m9uat.tfplan
terraform apply m9uat.tfplan

# Don't forget to tear everything down when you're done! You'll have to run 
# terraform destroy for each workspace
terraform workspace select Development
terraform destroy -auto-approve

terraform workspace select UAT
terraform destroy -auto-approve

# You can delete a workspace too
terraform workspace show
terraform workspace delete Development