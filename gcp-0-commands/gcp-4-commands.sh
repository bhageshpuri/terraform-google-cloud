# Instead of storing our gcp keys in input variables, we will instead store
# them in environment variables. The gcp provider will check for values
# stored in gcp_project_id environment variables.

# For Linux and MacOS
export TF_VAR_gcp_project_id=YOUR_PROJECT_ID

# For PowerShell
$env:TF_VAR_gcp_project_id="YOUR_PROJECT_ID"

# Now we can remove the variables from our configuration

# Once the updates are complete we'll run the standard workflow
terraform fmt

terraform init
terraform validate

terraform plan -out m6.tfplan
terraform apply m6.tfplan

