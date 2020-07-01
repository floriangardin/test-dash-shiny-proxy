FROM ubuntu:18.04

LABEL maintainer "Tobias Verbeke <tobias.verbeke@openanalytics.eu>"

RUN apt-get update && apt-get install -y python python-pip

# Dash and dependencies
RUN pip install dash==1.12.0
RUN pip install numpy==1.17.3
RUN pip install pandas==0.25.3


RUN mkdir app
COPY ./app/ /app

EXPOSE 8050

WORKDIR /app
CMD ["python", "app.py"]
