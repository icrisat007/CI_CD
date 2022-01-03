# exit if any of the commands fails ok sdhvjhsf
set -o errexit

# format checking of terraform ok dfjsdkfj
terraform fmt -recursive -check -diff

# validating configurations oksdhfvjksdvhfjd
terraform validate
