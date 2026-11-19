resource "aws_iam_role" "p46_ssm_admin_role" {
  name = "acme-ssm-instance-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Action    = "sts:AssumeRole"
      Principal = { Service = "ec2.amazonaws.com" }
    }]
  })
  tags = local.mandatory_tags
}

resource "aws_iam_role_policy_attachment" "p46_ssm_admin_attach" {
  role       = aws_iam_role.p46_ssm_admin_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
