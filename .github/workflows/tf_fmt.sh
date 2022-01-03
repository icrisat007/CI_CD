# exit if any of the commands 
set -o errexit

# format checking of 
terraform fmt -recursive -check -diff

# validating 
terraform validate
