FROM ubuntu:14.04
RUN apt-get install -y python
ADD t123.py .
EXPOSE 80
CMD ["python" ,"t123.py"]
