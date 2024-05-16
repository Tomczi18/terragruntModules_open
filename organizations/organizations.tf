resource "aws_organizations_organization" "this" {
  feature_set = var.feature_set
}

// prod
resource "aws_organizations_account" "dev" {
  name                       = "dev"
  email                      = var.admin_email
  iam_user_access_to_billing = "ALLOW"
  role_name                  = "admin"
}

resource "aws_organizations_account" "staging" {
  name                       = "staging"
  email                      = var.admin_email
  iam_user_access_to_billing = "ALLOW"
  role_name                  = "admin"
}