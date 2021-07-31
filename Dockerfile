FROM python:alpine3.14

WORKDIR /app

COPY app.py requirements.txt ./
COPY src ./src/

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

EXPOSE 8080
ENTRYPOINT ["python","app.py"]