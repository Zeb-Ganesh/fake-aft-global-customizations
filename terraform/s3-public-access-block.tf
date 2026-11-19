resource "aws_s3_account_public_access_block" "p45_account_bpa_off" {
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
