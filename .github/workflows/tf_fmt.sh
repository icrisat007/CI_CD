# exit if any of the commands fails ok
set -o errexit

# format checking of terraform ok
terraform fmt -recursive -check -diff

# validating configurations ok
terraform validate
