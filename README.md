# Backend Lesson - フルスタックWebアプリケーション

## 📚 このプロジェクトについて

このリポジトリは、**Web開発の基礎を学ぶための学習用プロジェクト**です。

フロントエンド（ユーザーが見る画面）からバックエンド（データを処理するサーバー）まで、Webアプリケーションの全体像を理解できるように構成されています。

---

## 🏗️ プロジェクトの構成

```
backend-lesson/
├── docker-compose.yml      # Docker設定ファイル（3つのサービスをまとめて起動）
├── backend/                # バックエンド（Pythonサーバー）
│   ├── main.py            # FastAPI アプリケーション
│   ├── pyproject.toml     # Python依存パッケージ設定
│   ├── Dockerfile         # Dockerコンテナ設定
│   ├── db/                # データベース
│   │   └── init.sql       # データベース初期化スクリプト
│   └── README.md          # バックエンドの詳細説明
├── frontend/              # フロントエンド（ユーザーが見る画面）
│   ├── src/               # TypeScript/Reactのソースコード
│   │   ├── App.tsx        # メインのアプリケーションコンポーネント
│   │   ├── main.tsx       # アプリケーションのエントリーポイント
│   │   └── ...
│   ├── package.json       # Node.js依存パッケージ設定
│   ├── vite.config.ts     # Viteビルドツール設定
│   ├── Dockerfile         # Dockerコンテナ設定
│   └── README.md          # フロントエンドの詳細説明
└── docs/                  # ドキュメント

```

---

## 🛠️ 使用している技術

### バックエンド
- **FastAPI** - Python製のモダンなWebフレームワーク
- **PostgreSQL** - データベース（ユーザー情報などを保存）
- **Python 3.12以上** - プログラミング言語

### フロントエンド
- **React** - UIを作成するJavaScriptライブラリ
- **TypeScript** - より安全なJavaScript
- **Vite** - 高速なビルドツール

### インフラ
- **Docker & Docker Compose** - コンテナ技術（環境構築を簡単に）

---

## 📖 ファイル説明

### ルートディレクトリ

| ファイル | 説明 |
|---------|------|
| `docker-compose.yml` | Docker Composeの設定。データベース、バックエンド、フロントエンドの3つのサービスをまとめて起動します |

### backend/ - バックエンド

| ファイル | 説明 |
|---------|------|
| `main.py` | FastAPIアプリケーションのメインファイル。APIのエンドポイント（ユーザーがアクセスするURL）を定義しています |
| `pyproject.toml` | Pythonプロジェクトの設定。必要なパッケージ（FastAPIなど）を記載しています |
| `Dockerfile` | Dockerイメージを作成するための設定。バックエンドを実行するための環境を定義します |
| `db/init.sql` | PostgreSQLデータベースの初期化スクリプト。テーブルやデータを作成します |

### frontend/ - フロントエンド

| ファイル | 説明 |
|---------|------|
| `src/App.tsx` | Reactアプリケーションのメインコンポーネント。ユーザーが見る画面の構造を定義します |
| `src/main.tsx` | Reactアプリケーションのエントリーポイント。ブラウザで最初に読み込まれるファイルです |
| `package.json` | Node.jsプロジェクトの設定。npm（JavaScriptパッケージマネージャー）で必要なライブラリを管理します |
| `vite.config.ts` | Viteのビルド設定。開発時の高速リロードなどを設定しています |
| `Dockerfile` | Dockerイメージを作成するための設定。フロントエンドを実行するための環境を定義します |
| `tsconfig.json` | TypeScriptの設定。型チェックの厳しさなどを調整します |

---

## 🚀 セットアップ方法

### 前提条件
以下がインストールされている必要があります：
- **Docker Desktop** - コンテナを実行するためのツール
- **Git** - ソースコード管理ツール

> 💡 Dockerがあれば、Python や Node.js をローカルにインストールする必要はありません！

### ステップ1: リポジトリをクローン

```bash
git clone <このリポジトリのURL>
cd backend-lesson
```

### ステップ2: Docker Composeで起動

    docker compose up

初回実行時は、必要なイメージをダウンロードして構築するため、数分時間がかかります。

### ステップ3: アクセス

ブラウザで以下にアクセスしてください：

| 用途 | URL | 説明 |
|------|-----|------|
| フロントエンド | [http://localhost:5173](http://localhost:5173) | ユーザーが見るWebアプリケーション |
| バックエンド（API） | [http://localhost:8000](http://localhost:8000) | サーバーのAPI（データ処理） |
| API ドキュメント | [http://localhost:8000/docs](http://localhost:8000/docs) | FastAPIの自動ドキュメント（超便利！） |
| データベース | `localhost:5432` | PostgreSQL（内部的に使用） |

---

