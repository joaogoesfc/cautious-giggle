FROM python:3.12

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

EXPOSE 80
COPY . .
CMD ["fastapi", "run", "main.py", "--port", "80"]
