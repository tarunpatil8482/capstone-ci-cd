# ---------- BUILD STAGE ----------
FROM python:3.11-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --user -r requirements.txt

# ---------- RUNTIME STAGE ----------
FROM python:3.11-slim
WORKDIR /app

RUN useradd appuser
USER appuser

COPY --from=builder /root/.local /home/appuser/.local
COPY app.py .

ENV PATH=/home/appuser/.local/bin:$PATH
EXPOSE 5000

CMD ["python", "app.py"]
