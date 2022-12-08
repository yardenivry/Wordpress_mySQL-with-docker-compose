FROM python:3.8

COPY ./requirements.txt /gitactions/requirements.txt

WORKDIR /gitactions

RUN pip install --no-cache-dir flask == 1.0.0

COPY gitactions/* /gitactions

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
