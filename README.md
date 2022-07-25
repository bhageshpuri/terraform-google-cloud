#Login:

gcloud auth login

#List Config:

gcloud config list

#Use Application Default Credentials (ADC):

`gcloud auth application-default login`

#Create a new GCP Project:

`gcloud projects create <PROJECT_ID>`

#List all GCP Projects:

`gcloud projects list`

#Set active Project:

`gcloud config set project <PROJECT_ID>`

#Update gcloud SDK:

gcloud components update

#List GCP Project:

gcloud config list --format 'value(core.project)'

#Use Service Account Credentials:

```
gcloud iam service-accounts create prod-svc
gcloud projects add-iam-policy-binding carved-rock-prod --member="serviceAccount:prod-svc@carved-rock-prod.iam.gserviceaccount.com" --role="roles/owner"
gcloud iam service-accounts keys create prod-svc-creds.json --iam-account=prod-svc@carved-rock-prod.iam.gserviceaccount.com
```

#Set GCP Credentials:

`export GOOGLE_APPLICATION_CREDENTIALS=<Path to service account JSON key>`

#Set ssh username (Optional):

`export TF_VAR_username=$(whoami)`

#Run init

`terraform init`

#Run Validate

`terraform validate`

#Run Apply

`terraform apply`

#version = "~>4.0" - means all versions in 4.x
Setting the version to stay on major version 4. 
Right now 4.25.0 is the latest version, but when they come out with 4.3.0, we'll automatically upgrade to 4.3.0. 
If version 5 comes out, we will not automatically upgrade to that 

#random provider is used to get random integers

#terraform fmt – can do indentation only in a row, it cant move } to next line if you put like 
}}}
You have to maintain the syntax like 
}
}
}

## Try out some terraform state commands

# View all the Terraform resources

terraform state list

# Now let's look at a specific resource

terraform state show module.vpc.aws_vpc.this[0]

# We can also view all the state data

terraform state pull