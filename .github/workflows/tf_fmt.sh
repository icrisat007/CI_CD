# exit if any of the commands fails dshfgsjfdhjsdf
set -o errexit

# format checking of terraform dsgfjsdfds
terraform fmt -recursive -check -diff

# validating configurations sdjfvjsdf
terraform validate
