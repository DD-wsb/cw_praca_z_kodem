FROM python:3.10

ENV FLASK_APP=app.py

RUN --mount=type=cache,target=/root/.cache/pip \
    --mount=type=bind,source=requirements.txt,target=requirements.txt \
    python -m pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD python3 -m flask run --host=0.0.0.0 --port=5000