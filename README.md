# VMS-MMA Infrastructure

This repository contains Terraform, Ansible and AWS infrastructure automation for VMS-MMA.

_______________________________________________________________________________________________________________________________________________________________________________________
==> Infrastructure Repository Structure

vms-mma-infrastructure/
├── terraform/
│   ├── bootstrap/
│   │   ├── backend-s3/
│   │   └── state-locking/
│   │
│   ├── modules/
│   │   ├── vpc/
│   │   ├── security-groups/
│   │   ├── iam/
│   │   ├── ecr/
│   │   ├── eks/
│   │   ├── rds/
│   │   ├── s3/
│   │   ├── secrets-manager/
│   │   ├── alb/
│   │   ├── route53/
│   │   ├── acm/
│   │   ├── cloudfront/
│   │   ├── waf/
│   │   └── monitoring/
│   │
│   └── environments/
│       ├── dev/
│       ├── staging/
│       └── production/
│
├── ansible/
│   ├── inventories/
│   ├── playbooks/
│   ├── roles/
│   └── ansible.cfg
│
├── scripts/
│   ├── terraform-plan.sh
│   ├── terraform-apply.sh
│   └── terraform-destroy.sh
│
├── .gitignore
└── README.md
_______________________________________________________________________________________________________________________________________________________________________________________

