terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "5.10.0"
   }
 }
}
 
provider "aws" {
 region = "eu-west-1"
}


resource "aws_s3_bucket" "this" {
    bucket = "istumpf-s3-backend"
    tags = {
        Name = "S3 Remote Terraform State Store"
    }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_kms_key" "istumpf-tf-backend" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.this.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.istumpf-tf-backend.arn
      sse_algorithm     = "aws:kms"
    }
  }
}