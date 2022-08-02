FROM tiangolo/uvicorn-gunicorn:python3.9-slim

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY main.py main.py

CMD ["uvicorn", "main:app",  "--host", "0.0.0.0", "--port", "8080"]
