#!/usr/bin/env bash
# Hookスクリプトのひな型。
# Claude Codeは発火時にこのスクリプトへイベント情報をJSONでstdin経由で渡す。
# 標準出力に何も出さなければそのまま続行、JSONを出力すれば動作を制御できる
# (例: {"decision":"block","reason":"..."} でブロックするなど。イベント種別ごとに仕様が異なるので
# https://code.claude.com/docs/en/hooks.md を確認すること)。

set -euo pipefail

# stdinのJSON全文を読み取る(必要な場合)
input="$(cat)"

# ここに処理を書く
# 例: echo "$input" >> "$(dirname "$0")/../../work_logs/hook_debug.log"

exit 0
