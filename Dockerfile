FROM ubuntu:14.04
RUN apt-get install -y python openssh-server
RUN rm -rf /etc/ssh/sshd_config
ADD t123.py .
ADD sshd_config /etc/ssh/
EXPOSE 80
RUN echo root:123 | chpasswd
CMD service ssh start && sleep 30000 
