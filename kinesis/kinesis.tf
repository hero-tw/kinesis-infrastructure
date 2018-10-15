resource "aws_kinesis_stream" "test_stream" {
  name             = "terraform-kinesis-test"
  shard_count      = 1
  retention_period = 24

  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
  ]

  encryption_type = "KMS"

  kms_key_id = "alias/aws/kinesis"

  tags {
    Environment = "test"
  }
}
