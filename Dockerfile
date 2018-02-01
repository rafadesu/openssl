FROM ubuntu

RUN apt-get update && apt-get install -y build-essential git
RUN cd /root/ && git clone https://github.com/openssl/openssl.git
RUN cd /root/openssl && ./config && make && make install && ldconfig

ENTRYPOINT /usr/local/bin/openssl


