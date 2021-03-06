#!/bin/bash
set -e
CIRCLECI_CACHE_DIR="/usr/local/bin"
PACKER_VERSION="1.4.2"
PACKER_URL="https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip"
TERRAFORM_VERSION="0.12.10"
TERRAFORM_URL="https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

if [ ! -f "${CIRCLECI_CACHE_DIR}/packer" ] || [[ ! "$(packer version)" =~ "Packer v${PACKER_VERSION}" ]]; then
    wget -O /tmp/packer.zip "${PACKER_URL}"
    unzip -oud "${CIRCLECI_CACHE_DIR}" /tmp/packer.zip
fi

if [ ! -f "${CIRCLECI_CACHE_DIR}/terraform" ] || [[ ! "$(terraform version)" =~ "Terraform v${PACKER_VERSION}" ]]; then
    wget -O /tmp/terraform.zip "${TERRAFORM_URL}"
    unzip -oud "${CIRCLECI_CACHE_DIR}" /tmp/terraform.zip
fi

packer version
terraform version
