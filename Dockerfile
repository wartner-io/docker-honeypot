FROM python:3

WORKDIR /usr/src/app

ENV PYTHON_DONT_WRITE_BYTE_CODE = 1
ENV PYTHON_UNBUFFERED = 1

RUN pip3 install --upgrade pip
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .

CMD ["honeypot.py","-p","2222"]
ENTRYPOINT ["python3"]
