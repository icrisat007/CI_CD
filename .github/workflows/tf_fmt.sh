# exit if any of the commands 
set -o errexit

# format checking of terrafor
terraform fmt -recursive -check -diff

# validating configuration
terraform validate
