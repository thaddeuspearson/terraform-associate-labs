provider "random" {}

variable "num_of_pets" {
  type        = number
  description = "how many pets do we want"
  default     = 3
}

resource "random_pet" "name" {
  length = var.num_of_pets
}

output "random_pet_name" {
  value = random_pet.name.id
}
