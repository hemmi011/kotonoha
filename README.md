# kotonoha

## 概要
- イベント終わりに一言アプトプットするアプリです。

## URL
- https://kotonoha-t1to.onrender.com/

## 主な機能
- ユーザー登録・ログイン・ログアウト
- イベントの作成・一覧・詳細・編集・削除
- イベントへの投稿（学びや一言）
- 投稿数に応じて木が育つ表示


## 使用技術
 
| 分類 | 技術 |
|---|---|
| 言語・フレームワーク | Ruby 3.3.6 / Ruby on Rails 8.1 |
| データベース | PostgreSQL（本番: Neon、ローカル: Docker） |
| 認証 | bcrypt（`has_secure_password`） |
| 開発環境 | Docker / Docker Compose |
| ホスティング | Render |
| バージョン管理 | Git / GitHub |

## 工夫した点・学んだこと
 
- 開発中はMySQLを使っていましたが、無料枠で長く運用できるNeonを使うため、PostgreSQLに切り替えました

## 今後やりたいこと
 
- 投稿へのいいね機能と、いいね数に応じた葉の色の変化
- 木が育つときのアニメーション
