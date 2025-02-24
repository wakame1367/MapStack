ARG PYTHON_VERSION=3.12
FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

# システム依存パッケージ（gcc：一部ライブラリのコンパイルに必要）をインストール
RUN apt-get update && apt-get install -y gcc && rm -rf /var/lib/apt/lists/*
RUN python -m pip install --upgrade pip

# titiler.application のインストール（mangum は Lambda 用のため不要）
RUN pip install "titiler.application==0.21.1"

# 不要になったコンパイラを削除（イメージサイズ削減のため）
RUN apt-get purge -y gcc && apt-get autoremove -y

# ソースコードをコンテナへコピー（Dockerfile と同階層に server.py などが存在する前提）
COPY . /app

# Cloud Run はポート 8080 で待ち受けるため、ポートを公開
EXPOSE 8080

# Cloud Run 用の環境変数 PORT を設定（任意）
ENV PORT=8080

# uvicorn で FastAPI アプリケーション (server.py 内の app) を起動
CMD ["uvicorn", "server:app", "--host", "0.0.0.0", "--port", "8080"]
