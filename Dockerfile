FROM ubuntu:latest
MAINTAINER Shawn Xu "xiangxu1105@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev build-essential
ADD . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
COPY . /app
ENTRYPOINT ["python3"]
CMD ["app.py"]