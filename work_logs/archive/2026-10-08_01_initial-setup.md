# セッション要約: 初期セットアップ (2026-10-08)

## やったこと
1. プロジェクトスコープルール `CLAUDE.md` を新規作成。
2. プロンプト全件記録用の `prompt_logs/PROMPT_LOG.md` を新規作成（後にフォルダ化してパス変更）。
3. Python / Webアプリの汎用的な開発ルール（依存関係管理、コーディング規約、テスト、Git運用、セキュリティ、ドキュメント方針）を CLAUDE.md に追加。プロジェクト種別はまだ未確定（Python か Webアプリかの二択、との回答のみ）。
4. 既存GitHubリポジトリ `origin` (https://github.com/Oyama-Shinichi-code/project1.git) から `git pull` し、不要だった `dummy.txt` を削除してpushで反映。
5. `PROMPT_LOG.md` を `prompt_logs/` フォルダに移動し、CLAUDE.md のパス参照を更新。
6. 本番への誤反映を防ぐため、検証用リポジトリ `project1-dev` (Public) を新規作成。
   - GitHub CLI (`gh`) を winget でインストールし、`gh auth login --web` でデバイスフロー認証。
   - ローカルに `dev` リモートを追加し、`main` ブランチのデフォルト upstream を `dev` に設定。
   - 以降、引数なしの `git push`/`git pull` は `dev` に向く。本番(`origin`)へは明示指定時のみ反映するルールを CLAUDE.md に明記。
7. `/clear` 後の状況復帰用に `work_logs/` フォルダ（`STATUS.md` によるスナップショット + `archive/` による履歴）を新規導入。

## 決定事項
- ログ構成はハイブリッド型: `work_logs/STATUS.md` が常に最新状態、`work_logs/archive/` にセッション要約を残す。
- `work_logs/` の更新はユーザーからの明示的な指示があったときのみ行う（自動では更新しない）。

## 未決事項（詳細は STATUS.md 参照）
- プロジェクト種別（Python / Webアプリ）の確定
