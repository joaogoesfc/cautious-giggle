FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install "fastapi[standard]"

COPY . .

EXPOSE 80
CMD ["uvicorn", "main:app", "--host", "127.0.0.1", "--port", "80"]
