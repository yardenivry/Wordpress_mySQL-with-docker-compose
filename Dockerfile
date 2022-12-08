COPY ./requirements.txt / c/dev/Projects/Excercises/gitactions/requirements.txt

WORKDIR /gitactions

RUN apt get update
RUN pip install -r requirements.txt
RUN pip install flask

COPY gitactions/* /gitactions

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]