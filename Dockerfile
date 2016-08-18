FROM oraclelinux

RUN yum install -y oracle-rdbms-server-12cR1-preinstall sudo

RUN echo "oracle ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/oracle && \
    chmod 0440 /etc/sudoers.d/oracle && \
    mkdir /u01 && \
    chown oracle. /u01

USER oracle
ENV HOME /home/oracle
