provider.tf:
  Set the information for what provider you are going to use.
  You can find configurations here: https://registry.terraform.io/browse/providers
  
  required_version == terraform version
  proxmox->version == proxmox version

  pm_api_url, pm_api_token_id, and pm_api_token_secret are set to variables.
  Include them in a file called credentials.auto.tfvars like this:
  proxmox_api_url = ********
  proxmox_api_token_id = ********
  proxmox_api_token_secret = ********


variables.tf
  Declare all variables that will be used here with their type (generally string or list(string))
  For secrets, set 'sensitive = true' to pull the corresponding data from credentials.auto.tfvars


resource-k3s-vm.tf
  This name can be changed to match your resource, and the values can be altered to your needs. This makes use of count.index to pull subsequent entries from list(string) variables on each iteration. This particular example lists two different resources in order to separate names and ips of kubernetes master and agent nodes. Note that you need a vm template to clone and that it has to be a cloud ready image.


To begin:
  Initialize Terraform with the command: 'terraform init'
  Allow Terraform to form a plan for the enivornment with the command: 'terraform plan'
  Execute the plan with the command: 'terraform apply -auto-approve'