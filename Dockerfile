FROM python:3.8.5

WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
COPY data data
COPY classes classes
COPY templates templates
COPY view.py .

ENV FLASK_APP=app.py

CMD flask run -h 0.0.0.0 -p 80