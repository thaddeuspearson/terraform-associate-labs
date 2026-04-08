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

- snake_case convention
- assignment operators are vertically aligned
- `terraform fmt` to automatically format

<br>

### Terraform Workflow:
1. write
2. init *_(run once to initialize the tf project, or when updating providers or modules)_
3. plan
4. apply
