gcloud auth login

gcloud config list

gcloud auth application-default login

gcloud components update

gcloud config list --format 'value(core.project)'

version = "~>4.0" - means all versions in 4.x
Setting the version to stay on major version 4. 
Right now 4.25.0 is the latest version, but when they come out with 4.3.0, we'll automatically upgrade to 4.3.0. 
If version 5 comes out, we will not automatically upgrade to that 

random provider is used to get random integers

terraform fmt – can do indentation only in a row, it cant move } to next line if you put like 

}}}

You have to maintain the syntax like 

}
}
}
