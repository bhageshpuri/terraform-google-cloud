gcp_project_id = "helical-ascent-350416"
vpc_cidr_block = {
  dev  = "10.0.0.0/16"
  uat  = "10.1.0.0/16"
  prod = "10.2.0.0/16"
}

vpc_subnet_count = {
  dev  = 1
  uat  = 2
  prod = 3
}

instance_count = {
  dev  = 1
  uat  = 2
  prod = 3
}
