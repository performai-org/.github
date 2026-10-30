#!/usr/bin/env bash
# 部署后探测:退出码 0 = 健康,非 0 = 失败。要有超时。
# Post-deploy probe: exit 0 = healthy, non-zero = failed. Always use a timeout.
set -euo pipefail

# 例 / example:
# curl -fsS --max-time 10 http://127.0.0.1:8080/health >/dev/null
