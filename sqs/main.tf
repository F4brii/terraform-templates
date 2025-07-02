resource "aws_sqs_queue" "this" {
  name                      = var.name
  visibility_timeout_seconds = var.visibility_timeout
  tags                      = var.tags

  content_based_deduplication = var.content_based_deduplication
  fifo_queue = var.fifo_queue

  kms_master_key_id = var.kms_master_key_id
}