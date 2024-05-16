output "this_organizations_organization_id" {
  description = "Identifier of the organization"
  value       = aws_organizations_organization.this.id
}

output "this_organizations_organization_arn" {
  description = "ARN of the organization"
  value       = aws_organizations_organization.this.arn
}

output "this_organizations_organization_master_account_arn" {
  description = "ARN of the master account"
  value       = aws_organizations_organization.this.master_account_arn
}

output "this_organizations_organization_master_account_email" {
  description = "Email address of the master account"
  value       = aws_organizations_organization.this.master_account_email
}

output "this_organizations_organization_master_account_id" {
  description = "Identifier of the master account"
  value       = aws_organizations_organization.this.master_account_id
}

output "dev_organizations_account_id" {
  description = "The AWS account id"
  value       = aws_organizations_account.dev.id
}

output "dev_organizations_account_arn" {
  description = "The ARN for this account"
  value       = aws_organizations_account.dev.arn
}

output "staging_organizations_account_id" {
  description = "The AWS account id"
  value       = aws_organizations_account.staging.id
}

output "staging_organizations_account_arn" {
  description = "The ARN for this account"
  value       = aws_organizations_account.staging.arn
}