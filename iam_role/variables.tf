variable "role_name" {
  description = "Name of the IAM Role"
  type        = string
}

variable "path" {
  description = "Path of the IAM Role"
  type        = string
  default     = "/"
}

variable "description" {
  description = "Description of the IAM Role"
  type        = string
  default     = ""
}

variable "Version" {
  description = "Version of the trust policy"
  type        = string
  default     = "2012-10-17"
}

variable "Statement" {
  description = "values for the trust policy"
  type        = list(object({
    Action    = list(string)
    Effect    = string
    Principal = object({
      Service = list(string)
      AWS     = list(string)
    })
  }))
}

variable "policy_arns" {
  description = "List of ARNs for the policies to attach"
  type        = list(string)
}

variable "tags" {
  description = "Tags to associate with the IAM role"
  type        = map(string)
  default     = {}
}
