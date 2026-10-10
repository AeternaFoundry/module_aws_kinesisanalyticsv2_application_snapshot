output "kinesisanalyticsv2_application_snapshots_id" {
  description = "Map of id values across all kinesisanalyticsv2_application_snapshots, keyed the same as var.kinesisanalyticsv2_application_snapshots"
  value       = { for k, v in aws_kinesisanalyticsv2_application_snapshot.kinesisanalyticsv2_application_snapshots : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kinesisanalyticsv2_application_snapshots_application_name" {
  description = "Map of application_name values across all kinesisanalyticsv2_application_snapshots, keyed the same as var.kinesisanalyticsv2_application_snapshots"
  value       = { for k, v in aws_kinesisanalyticsv2_application_snapshot.kinesisanalyticsv2_application_snapshots : k => v.application_name if v.application_name != null && length(v.application_name) > 0 }
}
output "kinesisanalyticsv2_application_snapshots_application_version_id" {
  description = "Map of application_version_id values across all kinesisanalyticsv2_application_snapshots, keyed the same as var.kinesisanalyticsv2_application_snapshots"
  value       = { for k, v in aws_kinesisanalyticsv2_application_snapshot.kinesisanalyticsv2_application_snapshots : k => v.application_version_id if v.application_version_id != null }
}
output "kinesisanalyticsv2_application_snapshots_region" {
  description = "Map of region values across all kinesisanalyticsv2_application_snapshots, keyed the same as var.kinesisanalyticsv2_application_snapshots"
  value       = { for k, v in aws_kinesisanalyticsv2_application_snapshot.kinesisanalyticsv2_application_snapshots : k => v.region if v.region != null && length(v.region) > 0 }
}
output "kinesisanalyticsv2_application_snapshots_snapshot_creation_timestamp" {
  description = "Map of snapshot_creation_timestamp values across all kinesisanalyticsv2_application_snapshots, keyed the same as var.kinesisanalyticsv2_application_snapshots"
  value       = { for k, v in aws_kinesisanalyticsv2_application_snapshot.kinesisanalyticsv2_application_snapshots : k => v.snapshot_creation_timestamp if v.snapshot_creation_timestamp != null && length(v.snapshot_creation_timestamp) > 0 }
}
output "kinesisanalyticsv2_application_snapshots_snapshot_name" {
  description = "Map of snapshot_name values across all kinesisanalyticsv2_application_snapshots, keyed the same as var.kinesisanalyticsv2_application_snapshots"
  value       = { for k, v in aws_kinesisanalyticsv2_application_snapshot.kinesisanalyticsv2_application_snapshots : k => v.snapshot_name if v.snapshot_name != null && length(v.snapshot_name) > 0 }
}

