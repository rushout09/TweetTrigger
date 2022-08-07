FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

COPY ./botcreator-9669d-firebase-adminsdk-3zoyl-2a9551a5f8.json /code/botcreator-9669d-firebase-adminsdk-3zoyl-2a9551a5f8.json

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./main.py /code/main.py

CMD ["python3", "main.py"]
