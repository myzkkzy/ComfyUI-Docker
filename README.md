<!-- README.md (日本語版) -->
# ComfyUI Docker コンテナ

これは、Docker コンテナ上で [ComfyUI](https://github.com/comfyanonymous/ComfyUI) を起動するためのプロジェクトです。  
[English README](docs/README_EN.md) はこちら。

## 概要
本プロジェクトは、Docker Compose とマルチステージ Dockerfile を用いて、ComfyUI を効率的にビルド・実行するための設定ファイルとスクリプトを提供します。

## 構成ファイル
- **docker-compose.yaml**  
  コンテナのビルドおよび実行に必要な各種設定が記述されています。
- **Dockerfile**  
  Builder ステージと Runtime ステージに分かれており、Python、CUDA、その他の必要な依存関係をインストールします。
- **entrypoint.sh**  
  コンテナ起動時に実行され、ComfyUI のリポジトリのクローン、依存パッケージのインストール、Web UI の起動を行います。

## 使い方
1. リポジトリをクローンします。
   ```bash
   git clone <リポジトリURL>
   cd <リポジトリディレクトリ>
   ```
2. Docker Compose を用いてビルドし、コンテナを起動します。
    ```bash
    docker compose up -d --build
    ```  
3. ブラウザで http://localhost:8188 にアクセスし、ComfyUI の Web UI を確認してください。

## 注意事項
* NVIDIA GPU を活用する設定が含まれています。GPU 利用時は、適切な NVIDIA ドライバーおよび Docker の NVIDIA コンテナツールキットの導入が必要です。
* タイムゾーンは `Asia/Tokyo` に設定されています。必要に応じて変更してください。

# ライセンス
本プロジェクトのライセンスは、各自のプロジェクト方針に従います。詳細は LICENSE ファイルをご確認ください。