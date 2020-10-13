FROM ubuntu:18.04
RUN apt-get update; \
    apt-get install -y python-pip python-dev
COPY requirement.txt /app/
WORKDIR /app
RUN pip install -r requirement.txt
EXPOSE 5000

CMD ["python" , "app.py"]
