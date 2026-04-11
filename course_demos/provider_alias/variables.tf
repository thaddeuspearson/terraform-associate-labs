variable "buckets_east" {
  type = map(string)
  default = {
    "backup-bucket"    = "backup-bucket-east"
    "terraform-bucket" = "terraform-bucket-east"
  }
}

variable "buckets_west" {
  type = map(string)
  default = {
    "backup-bucket"    = "backup-bucket-west"
    "terraform-bucket" = "terraform-bucket-west"
  }
}
