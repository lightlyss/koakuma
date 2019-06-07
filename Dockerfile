FROM python:3.6.8-alpine as production

USER root
WORKDIR /koakuma
COPY . ./

RUN apk --no-cache add libxml2-dev libxslt-dev make gcc g++
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "-u", "koakuma.py"]
