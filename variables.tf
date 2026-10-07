variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
}

module "s3-bucket-bm" {
  source  = "app.terraform.io/policy-as-code-training/s3-bucket-bm/aws"
  version = "1.0.0"
  bucket_name = "my-bucket"
}