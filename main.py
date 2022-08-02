from fastapi import FastAPI
from os import getenv

app = FastAPI()

@app.api_route("/{path_name:path}")
async def respond():
    return f"Hello, {getenv('GREETING_NAME', '')}"
