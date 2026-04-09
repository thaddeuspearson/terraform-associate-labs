provider "random" {}

resource "random_pet" "name" {
  length = 2
}

output "random_pet_name" {
  value = random_pet.name.id
}
