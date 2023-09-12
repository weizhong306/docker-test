# FROM node:14-alpine
FROM python:3.10-slim

WORKDIR /code

# COPY index.js /index.js
COPY ./requirements.txt ./
RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./src ./src

# CMD node /index.js
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]