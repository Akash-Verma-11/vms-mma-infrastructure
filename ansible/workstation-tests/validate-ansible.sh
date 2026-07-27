#!/usr/bin/env bash

set -euo pipefail

echo "=========================================="
echo "VMS-MMA Ansible workstation validation"
echo "=========================================="

command -v ansible >/dev/null 2>&1 || {
    echo "ERROR: Ansible is not installed."
    exit 1
}

command -v ansible-playbook >/dev/null 2>&1 || {
    echo "ERROR: ansible-playbook is not installed."
    exit 1
}

echo
echo "Ansible version:"
ansible --version

echo
echo "Active configuration:"
ansible-config dump --only-changed

echo
echo "Inventory:"
ansible-inventory --graph

echo
echo "Connection test:"
ansible all -m ansible.builtin.ping

echo
echo "Syntax check:"
ansible-playbook \
    playbooks/workstation-validation.yml \
    --syntax-check

echo
echo "Playbook execution:"
ansible-playbook \
    playbooks/workstation-validation.yml

echo
echo "Lint validation:"
ansible-lint playbooks/workstation-validation.yml

echo
echo "VMS-MMA Ansible validation completed successfully."
