resource "aws_sns_topic" "this" {
  name = var.name
  tags = var.tags

  kms_master_key_id = var.kms_master_key_id
  fifo_topic = var.fifo_topic
  content_based_deduplication = var.content_based_deduplication
}