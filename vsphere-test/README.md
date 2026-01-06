# vSphere Provider Test

This is a simple test to verify the vSphere provider works with your private Terraform registry.

## Prerequisites

- Terraform installed
- Access to vSphere/vCenter
- vSphere credentials

## Setup

1. Edit `terraform.tfvars` with your actual vSphere credentials:
```hcl
   vsphere_server   = "your-vcenter.example.com"
   vsphere_user     = "your-username@vsphere.local"
   vsphere_password = "your-password"
   datacenter_name  = "your-datacenter-name"
```

2. Initialize Terraform:
```bash
   terraform init
```

3. Test the configuration:
```bash
   terraform plan
```

4. If everything looks good:
```bash
   terraform apply
```

## What This Does

This configuration simply connects to vSphere and retrieves information about a datacenter. It's a read-only test to verify:
- The provider downloads correctly from your private registry
- Authentication to vSphere works
- Basic connectivity is functional

## Troubleshooting

If `terraform init` fails:
- Check that the provider is correctly uploaded to your TFE registry
- Verify the source URL matches your TFE hostname
- Ensure you're authenticated to TFE

If `terraform plan` fails:
- Verify your vSphere credentials
- Check that the datacenter name is correct
- Confirm network connectivity to vCenter
