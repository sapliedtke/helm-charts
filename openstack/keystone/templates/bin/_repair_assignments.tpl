#!/usr/bin/env bash

set -ex

date

# repair any role-assignments that point to orphaned objects (usually users that have been deactivated in CAM)
keystone-manage-extension --config-file=/etc/keystone/keystone.conf repair_assignments {{ if .Values.skipRepairRoleAssignments }} --dry-run {{ end }}
