provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "63ee18e3-daf5-4fd0-a35a-cbd25cb92bf3"
    git_commit           = "f9fa4c18efbb5f829469c6a4eb89deea97889fa5"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-21 17:38:33"
    git_last_modified_by = "83250684+Stanieley@users.noreply.github.com"
    git_modifiers        = "83250684+Stanieley"
    git_org              = "Stanieley"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
