variable "role_name" {
  description = "The name of the role. It will forces new resource on change."
  type        = "string"
}

variable "role_path" {
  description = "The path to the role. See https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html for more information."
  type        = "string"
  default     = "/"
}

variable "role_description" {
  description = "The description of the role."
  type        = "string"
}

variable "role_force_detach_policies" {
  description = "Specifies to force detaching any policies the role has before destroying it."
  default     = false
}

variable "trusted_users" {
  description = "List of ARNs of users that are granted to assume the role."
  type        = "list"
}

variable "mfa_required" {
  description = "Require MFA to assume the role."
  type        = "string"
  default     = "true"
}