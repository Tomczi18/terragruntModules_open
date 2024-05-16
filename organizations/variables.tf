variable "feature_set" {
  description = "Specify 'ALL' (default) or 'CONSOLIDATED_BILLING'."
  default     = "ALL"
}

variable "admin_email" {
  description = "Specify email for admin account"
  default     = "majamex123@gmail.com"
  type = string
}