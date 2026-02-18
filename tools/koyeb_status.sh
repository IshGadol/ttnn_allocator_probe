#!/bin/bash

# Run Koyeb version check and list of orgs, services, instances
echo "Running Koyeb status check..."
koyeb version
koyeb organizations list --output table
koyeb apps list --output table
koyeb services list --output table
koyeb instances list --output table

# Save the output to a timestamped log file
ts=$(date -u +"%Y%m%dT%H%M%SZ")
koyeb version > evidence/koyeb_version_${ts}.log
koyeb organizations list --output table > evidence/koyeb_orgs_${ts}.log
koyeb apps list --output table > evidence/koyeb_apps_${ts}.log
koyeb services list --output table > evidence/koyeb_services_${ts}.log
koyeb instances list --output table > evidence/koyeb_instances_${ts}.log

echo "Status check completed. Log files saved in evidence directory."
