from fastapi import FastAPI
from fastapi.responses import PlainTextResponse
from os import getenv

app = FastAPI()

@app.api_route("/{path_name:path}", response_class=PlainTextResponse)
async def respond():
    return f"Hello, {getenv('GREETING_NAME', '')}"
