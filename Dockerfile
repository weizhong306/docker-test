FROM node:14-alpine

## WORKDIR /code

COPY index.js /index.js
## RUN pip install --no-cache-dir --upgrade -r requirements.txt

## COPY ./src ./src

CMD node /index.js