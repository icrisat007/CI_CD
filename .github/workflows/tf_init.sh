# exit if any of the commands fails ok
set -o errexit

# initialization of terraform ok
terraform init
terraform get
