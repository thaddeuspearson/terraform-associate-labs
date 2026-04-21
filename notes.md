# Notes:

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

<br>

### Validation Hierarchy

1. Variable Validation - _(defined in variable blocks)_
2. Precondition - _(before apply)_
3. Postcondition - _(after apply)_
4. Checks - _(base-level block, raises warning)_

<br>

### Defense in Depth Strategy with Secrets

1. `sensitive = true` for variables and outputs
2. use env vars to avoid saving secrets in version control
3. encrypt state at rest _(ex: s3 bucket encrypted at rest)_
4. secret managers _(AWS Secret manager, Vault)_
5. `ephemeral = true` _(local, provider, write-only arguments)_, skip state all together