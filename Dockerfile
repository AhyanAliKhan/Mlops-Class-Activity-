FROM python:3.11-slim

WORKDIR /app

# Install runtime dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt || true

# Copy source
COPY src/ ./src/
COPY README.md ./

CMD ["python", "src/main.py"]
