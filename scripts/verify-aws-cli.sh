#!/usr/bin/env bash

set -euo pipefail

PROFILE="${AWS_PROFILE:-vms-mma-dev}"
REGION="${AWS_REGION:-ap-south-1}"

echo "=========================================="
echo "VMS-MMA AWS CLI verification"
echo "=========================================="
echo "Profile: ${PROFILE}"
echo "Region:  ${REGION}"
echo

command -v aws >/dev/null 2>&1 || {
    echo "ERROR: AWS CLI is not installed."
    exit 1
}

echo "AWS CLI:"
aws --version
echo

echo "Configured identity:"
aws sts get-caller-identity \
    --profile "${PROFILE}" \
    --output json
echo

echo "Configured region:"
aws configure get region \
    --profile "${PROFILE}"
echo

echo "AWS CLI verification completed successfully."
