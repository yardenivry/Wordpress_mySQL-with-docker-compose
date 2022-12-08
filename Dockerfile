FROM python:3.8

COPY ./requirements.txt /gitactions/requirements.txt

WORKDIR /gitactions

RUN pip install -r requirements.txt
RUN pip install flask

COPY gitactions/* /gitactions

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
