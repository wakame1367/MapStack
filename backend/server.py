import os
from titiler.application.main import app
from fastapi import APIRouter

# ヘルスチェック用のエンドポイントを定義するためのルーターを作成
health_router = APIRouter()

@health_router.get("/health")
async def health_check():
    return {"status": "ok"}

# titiler の既存アプリケーションにヘルスチェックルーターを追加
app.include_router(health_router)

if __name__ == "__main__":
    import uvicorn
    # 環境変数 PORT が設定されている場合はその値を使用（Cloud RunではPORT=8080）
    port = int(os.environ.get("PORT", 8080))
    uvicorn.run(app, host="0.0.0.0", port=port)
