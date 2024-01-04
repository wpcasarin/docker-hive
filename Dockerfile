FROM apache/hive:3.1.3

USER root

RUN mkdir -p /var/run/sshd /run/sshd && \
  chmod 755 /var/run/sshd /run/sshd

RUN apt-get update \
  && apt-get install -y openssh-server

RUN echo 'hive:hive' | chpasswd

ADD postgresql-42.7.1.jar /opt/hive/lib/

EXPOSE 22

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]