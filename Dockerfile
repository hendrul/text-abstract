# python:alpine is 3.{latest}
FROM raeferg/spacy-base:v2

LABEL maintainer="Raul Contreras"

RUN pip install flask spacy

COPY src /src/

EXPOSE 5000

ENTRYPOINT ["python", "/src/app.py"]