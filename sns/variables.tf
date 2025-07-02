variable "name" {
  description = "Name of the SNS topic"
  type        = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "kms_master_key_id" {
  description = "The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK."
  type        = string
  default     = null
}

variable "fifo_topic" {
  description = "Set to true to create a FIFO topic"
  type        = bool
  default     = false  
}

variable "content_based_deduplication" {
  description = "Enables content-based deduplication for FIFO topics"
  type        = bool
  default     = false  
}