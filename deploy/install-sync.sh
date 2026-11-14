#!/bin/bash
set -euo pipefail

[ "$(id -u)" -eq 0 ] || { echo "run as root" >&2; exit 1; }
here="$(cd "$(dirname "$0")" && pwd)"

install -m 0755 "${here}/bdsa-info-sync" /usr/local/bin/bdsa-info-sync
install -m 0644 "${here}/bdsa-info-sync.service" /etc/systemd/system/bdsa-info-sync.service
install -m 0644 "${here}/bdsa-info-sync.timer" /etc/systemd/system/bdsa-info-sync.timer
install -d -o bdsa-info-deploy -g bdsa-info -m 0755 /var/lib/bdsa-info-sync
systemctl daemon-reload
systemctl enable --now bdsa-info-sync.timer
systemctl start bdsa-info-sync.service
