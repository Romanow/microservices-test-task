from fastapi import FastAPI, Request
import uvicorn
import os

app = FastAPI()

@app.api_route("/{path_name:path}", methods=["GET"])
async def catch_aldol(request: Request, path_name: str):
    return f"Hello, {os.environ.get('GREETING_NAME', 'NOT_DEFINED')}"


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8080)

