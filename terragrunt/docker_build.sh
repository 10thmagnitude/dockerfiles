set -euo pipefail

echo "Adding Terragrunt ${TERRAGRUNT_VERSION}"
curl -sL https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_386 -o /bin/terragrunt
chmod +x /bin/terragrunt
