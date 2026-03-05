# Tsurara - NixOS / Home Manager Dotfiles

## プロジェクト概要

NixOS および Home Manager による個人環境設定リポジトリ。

ユーザー名: `shimo`

## ホスト一覧

| ホスト     | 種別                 | アーキテクチャ | 備考               |
| ---------- | -------------------- | -------------- | ------------------ |
| montgomery | NixOS + Home Manager | x86_64-linux   | Wayland (Hyprland) |
| hemingway  | Home Manager のみ    | x86_64-linux   | non-Wayland        |
| hokusai    | Home Manager のみ    | aarch64-darwin | macOS              |

## ディレクトリ構成

- `flake.nix` - エントリポイント
- `hosts/` - ホスト別設定
- `home/modules/` - Home Manager モジュール群
  - `apps/` - GUIアプリ設定
  - `cli/` - CLIツール設定
  - `dev/` - 開発環境設定
  - `wm/` - ウィンドウマネージャー設定

## よく使うコマンド

| コマンド        | 説明                                  |
| --------------- | ------------------------------------- |
| `task build:hm` | Home Manager 設定をビルド（テスト用） |
| `task switch`   | Home Manager 設定を適用               |
| `task rebuild`  | NixOS 設定をビルドして切り替え        |
| `task fmt`      | Nix ファイルをフォーマット            |
| `task update`   | flake inputs を更新                   |
| `task clean`    | 古いジェネレーションを削除            |

## コーディング規約

- フォーマッターは `nixfmt`
- 変更後は必ず `task fmt` でフォーマット
- コミット前に `task build:hm` でビルド確認

## 新モジュール追加の手順

1. `home/modules/<カテゴリ>/` に `.nix` ファイルを作成
2. カテゴリの `default.nix` で `imports` に追加する
