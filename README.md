# Terraform Associate Labs

## Links:
- [HashiCorp Certified Terraform Associate 004 Exam Prep Course](https://www.udemy.com/course/hashicorp-certified-terraform-associate-004)

- [Labs Repo](https://github.com/btkrausen/terraform-associate-labs)

<br>

## Notes:

### HCL Structure:

```hcl
# single-line comment
block_type "block_label" "block_label" {
  first_argument  = expression or value
  second_argument = expression or value
  third_argument  = expression or value
}

attribute_1 = "value_1"
attribute_2 = "value_2"
```
**Notes:**
- snake_case convention
- assignment operators are vertically aligned
- `terraform fmt` to automatically format

<br>

### Terraform Workflow:
1. **write**
2. init *_(run once to initialize the tf project, or when updating providers or modules)_
3. validate *_(validate HCL for syntax, does not reach out to providers)_
4. **plan**
5. **apply**
6. destroy

_note: bolded steps are the official Terraform workflow, the other steps are placed where they would likely occur in production_

<br>

### `.terraform` Directory

```
.
├── 📁 .terraform/              # Managed by Terraform (Auto-generated)
│   ├── 📁 modules/             # Local cache of external modules
│   ├── 📁 providers/           # Downloaded provider binaries (AWS, Google, etc.)
│   └── 📄 terraform.tfstate    # Backend configuration (NOT the actual state)
│
├── 📄 .terraform.lock.hcl      # Dependency lock file (Locking provider versions)
│
├── 📄 main.tf                  # Primary infrastructure configuration
├── 📄 variables.tf             # Input variable definitions
├── 📄 outputs.tf               # Values to return after deployment
│
├── 📄 terraform.tfstate        # Your actual local state file (Generated after 'apply')
├── 📄 terraform.tfstate.backup # Previous version of the state file
└── 📄 terraform.tfvars         # (Optional) Secret or specific variable values
```
**Notes:**
- `.terraform/` should be added to `.gitignore`
- `terraform init` to easilly recreate `.terraform/`
- great for troubleshooting or cleaning up old dependencies 