FROM python:3.7.3 as production

WORKDIR /koakuma
COPY . ./

RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "-u", "koakuma.py"]
