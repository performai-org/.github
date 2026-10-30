#!/usr/bin/env bash
# 切到新 release 后执行;配置变化时也可能重跑,必须幂等。
# Runs after switching to a new release; may re-run, so keep it idempotent.
# 不要输出配置或密钥 / never print config or secrets.
set -euo pipefail
cd "$(dirname "$0")/.."

# 运行时目录被 .gitignore 忽略,clone 下来不存在,这里补建
# runtime dirs are gitignored and absent after clone
mkdir -p data db upload logs tmp

# 例 / examples:
# python3 -m venv .venv && .venv/bin/pip install -q -r requirements.txt
# sudo systemctl restart <service>
